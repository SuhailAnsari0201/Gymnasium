package com.rdec.services;


import com.rdec.model.NewPackage;
import com.rdec.model.Admin;
import com.rdec.model.Customer;


public interface AdminService {
	public boolean addAdmin(Admin admin);
	public Admin adminLogin(Admin admin);
	public boolean addNewPackage(NewPackage newPack);
	public boolean paymentByAdmin(Customer customer);
	
}
