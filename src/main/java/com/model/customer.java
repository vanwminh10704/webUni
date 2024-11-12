package com.model;

import java.util.Date;

public class customer {
	private String name;
	private String email;
	private boolean gender;
	private Date birthDay;
	private String Address;
	private String Career;
	private String typeShip;
	
	public customer() {}
	public customer(String name, String email, boolean gender, Date birthDay, String address, String career,String typeShip) {
		super();
		this.name = name;
		this.email = email;
		this.gender = gender;
		this.birthDay = birthDay;
		this.Address = address;
		this.Career = career;
		this.typeShip = typeShip;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}
	public Date getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getCareer() {
		return Career;
	}
	public void setCareer(String career) {
		Career = career;
	}
	public String getTypeShip() {
		return typeShip;
	}
	public void setTypeShip(String typeShip) {
		this.typeShip = typeShip;
	}
	
	
	
}
