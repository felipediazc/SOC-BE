package com.bringglobal.soc.controller;

import com.bringglobal.soc.db.entity.WorkersRange;
import com.bringglobal.soc.db.repository.WorkersRangeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class WorkersRangeController {

    @Autowired
    private WorkersRangeRepository workersRangeRepository;

    @GetMapping(path = "/workersrange")
    public List<WorkersRange> getWorkersRangeList(){
        return workersRangeRepository.findAllByOrderByNameAsc();
    }
}
