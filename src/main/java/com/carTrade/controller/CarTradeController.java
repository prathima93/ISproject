package com.carTrade.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.carTrade.model.CarDetails;

@RestController
public class CarTradeController {
	
	@PostMapping(path = "/carDetails", consumes = "application/json", produces = "application/json")
	@ResponseBody
	public Map<String, String> getCarDetails(@RequestBody CarDetails details) {
		System.out.println("Print Car Make------ "+details.getCarMake());
		Map<String, String> carMap=new HashMap<String,String>();
		carMap.put("carMake",details.getCarMake());
		return carMap;
	}

}
