package com.bringglobal.soc.db.repository;

import com.bringglobal.soc.db.entity.Currency;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CurrencyRepository extends CrudRepository<Currency, Long> {

    List<Currency> findAllByOrderByNameAsc();
}
