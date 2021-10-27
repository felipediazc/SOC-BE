package com.bringglobal.soc.db.repository;

import com.bringglobal.soc.db.entity.AnualInvoiceRange;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface AnualInvoiceRangeRepository extends CrudRepository<AnualInvoiceRange, Long> {
    List<AnualInvoiceRange> findAllByOrderByNameAsc();
}
