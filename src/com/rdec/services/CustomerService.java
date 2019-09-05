package com.rdec.services;

import java.util.List;

import com.rdec.model.Customer;
import com.rdec.model.NewPackage;

public interface CustomerService {
	
	public boolean addCustomer(Customer customer);
	public boolean updateCustomer(Customer customer) ;
	public boolean updateCustomerProfile(Customer customer);
	public Customer loginCustomer(Customer customer);
	public boolean deleteCustomer(Customer customer);
	public List<Customer> getAllCustomer();
	public List<Customer> getUnpaidCustomer();
	public int getPackagefee(String packageName);
	public boolean getCustomerByEmail(String email);
	public Customer getCustomerById(int id);
	public List<NewPackage> getAllPackage();
}
