package com.rdec.services;

import java.sql.SQLException;


import com.rdec.dao.AdminDAOImpl;
import com.rdec.model.Admin;
import com.rdec.model.Customer;
import com.rdec.model.NewPackage;


public class AdminServiceImpl implements AdminService {
	AdminDAOImpl dao = new AdminDAOImpl();
	@Override
	public boolean addAdmin(Admin admin) {
		boolean result  = false;
		
		try {
			result = dao.addAdmin(admin);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	@Override
	public Admin adminLogin(Admin admin) {
		try {
			admin = dao.adminLogin(admin);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return admin;
	}
	@Override
	public boolean addNewPackage(NewPackage newPack) {
		boolean result = false;
		try {
			result = dao.addNewPackage(newPack);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	@Override
	public boolean paymentByAdmin(Customer customer) {
		boolean result = false;
		try {
			result = dao.paymentByAdmin(customer);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;

	}
	

}
