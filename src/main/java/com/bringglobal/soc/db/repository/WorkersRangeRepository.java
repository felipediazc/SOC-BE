package com.bringglobal.soc.db.repository;

import com.bringglobal.soc.db.entity.WorkersRange;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface WorkersRangeRepository extends CrudRepository<WorkersRange, Long> {
    List<WorkersRange> findAllByOrderByNameAsc();
}
