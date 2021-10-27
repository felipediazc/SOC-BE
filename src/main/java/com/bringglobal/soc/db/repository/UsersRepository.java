package com.bringglobal.soc.db.repository;

import com.bringglobal.soc.db.entity.Users;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UsersRepository extends CrudRepository<Users, Long> {

    List<Users> findFirstByEmail(String email);
}
