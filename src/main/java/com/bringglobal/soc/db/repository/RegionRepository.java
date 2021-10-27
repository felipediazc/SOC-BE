package com.bringglobal.soc.db.repository;

import com.bringglobal.soc.db.entity.Region;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface RegionRepository extends CrudRepository<Region, Long> {
    List<Region> findAllByOrderByNameAsc();
}
