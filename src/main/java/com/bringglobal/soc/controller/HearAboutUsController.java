package com.bringglobal.soc.controller;

import com.bringglobal.soc.db.entity.HearAboutUs;
import com.bringglobal.soc.db.repository.HearAboutUsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class HearAboutUsController {

    @Autowired
    private HearAboutUsRepository hearAboutUsRepository;

    @GetMapping(path = "/hearaboutus")
    public List<HearAboutUs> getHearAboutUsList(){
        return hearAboutUsRepository.findAllByOrderByNameAsc();
    }
}
