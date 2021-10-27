package com.bringglobal.soc.db.repository;

import com.bringglobal.soc.db.entity.HearAboutUs;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface HearAboutUsRepository extends CrudRepository<HearAboutUs, Long> {
    List<HearAboutUs> findAllByOrderByNameAsc();
}
