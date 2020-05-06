package com.carTrade.controller;

import com.carTrade.model.CarDetails;
import com.carTrade.service.CustRegistrationService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.carTrade.model.Customers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import javax.servlet.http.HttpServletResponse;

@Controller
@ResponseBody
public class CustRegistrationController {

    private final CustRegistrationService custRegistrationService;

    public CustRegistrationController(CustRegistrationService custRegistrationService) {
        this.custRegistrationService = custRegistrationService;
    }

    @RequestMapping(value="/SaveRegistration", method = RequestMethod.POST)
    public ResponseEntity<String> saveCustomerDetails(ModelMap model, @RequestBody Customers details, HttpServletResponse response){
        String message=custRegistrationService.getCustDetails(details);
        return new ResponseEntity<String>(message,HttpStatus.OK);
    }
    
   

}
