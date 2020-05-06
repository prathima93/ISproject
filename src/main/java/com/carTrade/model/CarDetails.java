package com.carTrade.model;

import lombok.Data;

@Data	
public class CarDetails {
	public String model;
	private String make;
	private String color;
	private int year;
	private long mileage;

}
