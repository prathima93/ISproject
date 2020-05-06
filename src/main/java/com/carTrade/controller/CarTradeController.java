package com.carTrade.controller;

import java.util.HashMap;
import java.util.Map;

import javax.xml.ws.http.HTTPBinding;

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
	public ResponseEntity<String> getCarDetails(@RequestBody CarDetails details) {
		long quoteAmount=0L;
		
		if (details.getMileage() > 50000) {
			if (details.getYear() >= 2010 && details.getYear() <= 2015) {
				
				quoteAmount=8000;
			} else if (details.getYear() > 2015 && details.getYear() <= 2020) {
				quoteAmount=10000;
			}
		} else {
			quoteAmount=20000;

		}
		return new ResponseEntity<String>(String.valueOf(quoteAmount),HttpStatus.OK);
	}

}
