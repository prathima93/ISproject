package com.carTrade.service;


import com.carTrade.model.Customers;
import com.carTrade.repository.LoginRepo;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Optional;

@Service
public class LoginService {

    private final LoginRepo loginRepo;

    public LoginService(LoginRepo loginRepo) {
        this.loginRepo = loginRepo;
    }

    public boolean validateUser(String userid, String password) {
        boolean isLoginValid=false;
        Optional<Customers> customerLoginDetails=loginRepo.findById(userid);

        if(customerLoginDetails.isPresent() && customerLoginDetails.get().getPassword().equals(password)){
            isLoginValid=true;
        }

        return isLoginValid;
    }

}