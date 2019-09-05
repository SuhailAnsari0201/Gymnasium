package com.rdec.dao;

import java.sql.SQLException;


import com.rdec.model.Admin;
import com.rdec.model.Customer;
import com.rdec.model.NewPackage;


public interface AdminDAO {
	
	public boolean addAdmin(Admin admin) throws SQLException;
	public Admin adminLogin(Admin admin) throws SQLException;
	public boolean addNewPackage(NewPackage newPack) throws SQLException;
	public boolean paymentByAdmin(Customer customer) throws SQLException;
	

}
