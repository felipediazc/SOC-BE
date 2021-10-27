package com.bringglobal.soc.controller;

import com.bringglobal.soc.db.entity.Industry;
import com.bringglobal.soc.db.repository.IndustryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class IndustryController {

    @Autowired
    private IndustryRepository industryRepository;

    @GetMapping(path = "/industry")
    public List<Industry> getIndustryList(){
        return industryRepository.findAllByOrderByNameAsc();
    }
}
