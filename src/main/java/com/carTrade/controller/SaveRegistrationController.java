package com.carTrade.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.carTrade.model.CustomerDetails;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

@Controller
public class SaveRegistrationController {
	
	@RequestMapping(value="/SaveRegistration", method = RequestMethod.POST)
    public String showHomePage(ModelMap model){
		System.out.println("In DB");
        return "home";
    }

}
