package com.customer;

public class Customer {

	private int id;
	private String name;
	private String email;
	private String phone;
	private String username;
	private String password;
	private String address;
	private String dob;
	private String faculty;
	private String gender;

	public Customer(int id, String name, String email, String phone, String username, String password, String address,
			String dob, String faculty, String gender) {
		
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.username = username;
		this.password = password;
		this.address = address;
		this.dob = dob;
		this.faculty = faculty;
		this.gender = gender;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public String getAddress() {
		return address;
	}

	public String getDob() {
		return dob;
	}

	public String getFaculty() {
		return faculty;
	}
	public String getGender() {
		return gender;
	}
	
}
