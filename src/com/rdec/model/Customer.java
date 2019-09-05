package com.rdec.model;


import java.io.InputStream;
import java.util.Date;

public class Customer {
	
	private int customerId;
	private String firstName;
	private String lastName;
	private Date dob;
	private Date doj;
	private String customerPackage;
	private String gendar;
	private String email;
	private String mobile;
	private String address;
	private int total_fee;
	private int paid_fees;
	private String password;
	private InputStream image;
	
	public Customer() {
		
	}

	

	
	public Customer(int customerId, String firstName, String lastName, Date dob, Date doj, String customerPackage,String gendar, String email, String mobile, String address,int total_fee, int paid_fees, String password,InputStream image) {
		super();
		this.customerId = customerId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.doj = doj;
		this.customerPackage = customerPackage;
		this.gendar = gendar;
		this.email = email;
		this.mobile = mobile;
		this.address = address;
		this.total_fee = total_fee;
		this.paid_fees = paid_fees;
		this.password = password;
		this.image = image;
	}




	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public Date getDoj() {
		return doj;
	}

	public void setDoj(Date doj) {
		this.doj = doj;
	}

	public String getCustomerPackage() {
		return customerPackage;
	}

	public void setCustomerPackage(String customerPackage) {
		this.customerPackage = customerPackage;
	}

	public String getGendar() {
		return gendar;
	}

	public void setGendar(String gendar) {
		this.gendar = gendar;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}




	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	public int getTotal_fee() {
		return total_fee;
	}

	public void setTotal_fee(int total_fee) {
		this.total_fee = total_fee;
	}

	public int getPaid_fees() {
		return paid_fees;
	}

	public void setPaid_fees(int paid_fees) {
		this.paid_fees = paid_fees;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}




	public InputStream getImage() {
		return image;
	}




	public void setImage(InputStream image) {
		this.image = image;
	}






	
	

	
	
}
