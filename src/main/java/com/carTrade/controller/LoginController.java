package com.carTrade.controller;


import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.carTrade.model.Customers;
import com.carTrade.service.LoginService;

@Controller
//@SessionAttributes("name")
public class LoginController {

    @Autowired
    LoginService service;

    @RequestMapping(value="/login", method = RequestMethod.GET)
    public String showLoginPage(ModelMap model){
        return "login";
    }
    

    @RequestMapping(value="/login", method = RequestMethod.POST)
    public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password){

        boolean isValidUser = service.validateUser(name, password);

        if (!isValidUser) {
            model.put("errorMessage", "Invalid Credentials");
            return "login";
        }

       // model.put("name", name);
      //  model.put("password", password);

        return "carhome";
    }
    
    @RequestMapping(value="/carRegistration", method = RequestMethod.GET)
    public String showRegistrationPage(){
        return "carRegistration";
    }
    
    @RequestMapping(value="/buyCar", method = RequestMethod.GET)
    public String showBuyCar(){
    	return "buyaCar";
    }
    
    @RequestMapping(value="/sellCar", method = RequestMethod.GET)
    public String getSellCar(){
    	return "sellCar";
    }
    
    @RequestMapping(value="/homePage", method = RequestMethod.GET)
    public String shoeHomePage(){
    	return "carhome";
    }
    
    @RequestMapping(value="/checkOut", method = RequestMethod.GET)
    public String showCheckOutPage(){
    	return "checkOut";
    }

}