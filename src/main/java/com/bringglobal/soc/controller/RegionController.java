package com.bringglobal.soc.controller;

import com.bringglobal.soc.db.entity.Region;
import com.bringglobal.soc.db.repository.RegionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class RegionController {

    @Autowired
    private RegionRepository regionRepository;

    @GetMapping(path = "/region")
    public List<Region> getRegionList(){
        return regionRepository.findAllByOrderByNameAsc();
    }
}
