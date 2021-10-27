package com.bringglobal.soc.db.repository;

import com.bringglobal.soc.db.entity.Industry;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface IndustryRepository extends CrudRepository<Industry, Long> {
    List<Industry> findAllByOrderByNameAsc();
}
