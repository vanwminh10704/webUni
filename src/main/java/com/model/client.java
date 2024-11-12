package com.model;

import java.util.Date;

public class client {
	private String name;
	private String email;
	private String address;
	private Date birthday;
	private boolean gender;
	private String phoneNumber;
	
	public client() {
		super();
	}

	public client(String name, String email, String address, Date birthday, boolean gender, String phoneNumber) {
		super();
		this.name = name;
		this.email = email;
		this.address = address;
		this.birthday = birthday;
		this.gender = gender;
		this.phoneNumber = phoneNumber;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	@Override
	public String toString() {
		return "client{" +
                "name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", birthday=" + birthday +
                ", gender=" + gender +
                ", phoneNumber='" + phoneNumber + '\'' +
                '}';
	}
	
}
