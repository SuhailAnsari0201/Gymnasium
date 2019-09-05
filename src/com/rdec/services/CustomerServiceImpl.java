package com.rdec.services;

import java.sql.SQLException;
import java.util.List;

import com.rdec.dao.CustomerDAOImpl;
import com.rdec.model.Customer;
import com.rdec.model.NewPackage;

public class CustomerServiceImpl implements CustomerService{

	private CustomerDAOImpl dao = new CustomerDAOImpl();
	@Override
	public boolean addCustomer(Customer customer) {
		boolean result = false;
		try {
			result = dao.addCustomer(customer);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	@Override
	public Customer loginCustomer(Customer customer) {
		try {
			customer = dao.loginCustomer(customer);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return customer;
	}
	@Override
	public boolean deleteCustomer(Customer customer) {
		boolean b = false;
		try {
			b = dao.deleteCustomer(customer);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	@Override
	public List<Customer> getAllCustomer() {
		List<Customer> list = null;
		try {
			list = dao.getAllCustomer();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<Customer> getUnpaidCustomer() {
		List<Customer> list = null;
		try {
			list = dao.getUnpaidCustomer();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public int getPackagefee(String packageName) {
		int fees = 0;
		try {
			fees = dao.getPackagefee(packageName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fees;
	}
	@Override
	public boolean getCustomerByEmail(String email) {
		boolean b = false;
		try {
			b = dao.getCustomerByEmail(email);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	@Override
	public List<NewPackage> getAllPackage() {
		List<NewPackage> list = null;
		try {
			list = dao.getAllPackage();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public Customer getCustomerById(int id) {
		Customer customer = null;
		try {
			customer = dao.getCustomerById(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return customer;
	}
	@Override
	public boolean updateCustomer(Customer customer) {
		boolean result = false;
		try {
			result = dao.updateCustomer(customer);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	@Override
	public boolean updateCustomerProfile(Customer customer) {
		boolean result = false;
		try {
			result = dao.updateCustomerProfile(customer);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
