package com.bringglobal.soc.controller;

import com.bringglobal.soc.db.entity.Users;
import com.bringglobal.soc.db.repository.UsersRepository;
import com.bringglobal.soc.exception.PasswordsDoNotMatchException;
import com.bringglobal.soc.exception.UserExistException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UsersController {

    @Autowired
    private UsersRepository usersRepository;

    @PostMapping("/singup")
    public void singUp(@RequestBody Users user) {
        if (Boolean.FALSE.equals(user.getPassword().equals(user.getPasswordverify()))) {
            throw new PasswordsDoNotMatchException("Passwords do not match");
        } else {
            List<Users> usersFound = usersRepository.findFirstByEmail(user.getEmail());
            if (usersFound.isEmpty()) {
                usersRepository.save(user);
            } else {
                throw new UserExistException("User already exists");
            }
        }
    }

}
