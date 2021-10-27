package com.bringglobal.soc.controller;

import com.bringglobal.soc.db.entity.AnualInvoiceRange;
import com.bringglobal.soc.db.repository.AnualInvoiceRangeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class AnualInvoiceRangeController {

    @Autowired
    private AnualInvoiceRangeRepository anualInvoiceRangeRepository;

    @GetMapping(path="/anualinvoicerange")
    public List<AnualInvoiceRange> getAnualInvoiceList(){
        return anualInvoiceRangeRepository.findAllByOrderByNameAsc();
    }
}
