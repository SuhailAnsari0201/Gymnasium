package com.rdec.dao;

import java.sql.SQLException;
import java.util.List;

import com.rdec.model.Customer;
import com.rdec.model.NewPackage;

public interface CustomerDAO {
	
	public boolean addCustomer(Customer customer) throws SQLException;
	public boolean updateCustomer(Customer customer) throws SQLException;
	public boolean updateCustomerProfile(Customer customer) throws SQLException;
	public Customer loginCustomer(Customer customer) throws SQLException;
	public boolean deleteCustomer(Customer customer) throws SQLException;
	public List<Customer> getAllCustomer() throws SQLException;
	public List<Customer> getUnpaidCustomer() throws SQLException;
	public int getPackagefee(String packageName) throws SQLException;
	public boolean getCustomerByEmail(String email) throws SQLException;
	public Customer getCustomerById(int id) throws SQLException;
	public List<NewPackage> getAllPackage() throws SQLException;
	

}
