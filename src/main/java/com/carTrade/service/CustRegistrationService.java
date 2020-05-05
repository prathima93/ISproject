package com.carTrade.service;

import com.carTrade.model.Customers;
import com.carTrade.repository.CustomerRepo;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class CustRegistrationService {

    private final CustomerRepo customerRepo;

    public CustRegistrationService(CustomerRepo customerRepo) {
        this.customerRepo = customerRepo;
    }

    public String getCustDetails(Customers details){
        String message;
        UUID uuid = UUID.randomUUID();
        details.setId(uuid);
        Customers stored=customerRepo.save(details);
        if(stored!=null){
            message="Sucessfully Registered";
        }else{
            message="Not Registered";
        }
        return message;
    }
}
