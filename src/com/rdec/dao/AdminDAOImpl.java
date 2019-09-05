package com.rdec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.rdec.model.Admin;
import com.rdec.model.Customer;
import com.rdec.model.NewPackage;
import com.rdec.util.DBUtil;

public class AdminDAOImpl implements AdminDAO{
	private Connection conn=new DBUtil().getConn();
	@Override
	public boolean addAdmin(Admin admin) throws SQLException {
		
		PreparedStatement ps=null;
		ps=conn.prepareStatement("INSERT INTO admin(name,email,password) VALUES(?,?,?)");

		ps.setString(1, admin.getAdminName());
		ps.setString(2, admin.getAdminEmail());
		ps.setString(3,admin.getPassword());
		
		int r=ps.executeUpdate();
		if(r>0)
			return true;
		return false;
	}
	@Override
	public Admin adminLogin(Admin admin) throws SQLException {
		
		PreparedStatement ps=null;
		ps=conn.prepareStatement("SELECT * FROM admin WHERE email=? AND password=?");

		ps.setString(1, admin.getAdminEmail());
		ps.setString(2, admin.getPassword());
		ResultSet rs = ps.executeQuery();
		if(rs.next()) {
			admin.setAdminName(rs.getString(2));
			return admin;
		}
		return null;
	}
	@Override
	public boolean addNewPackage(NewPackage newPack) throws SQLException {

		PreparedStatement ps=null;
		ps=conn.prepareStatement("INSERT INTO package(packageName,fees) VALUES(?,?)");

		ps.setString(1, newPack.getPackageName());
		ps.setInt(2, newPack.getFees());
		
		int r=ps.executeUpdate();
		if(r>0)
			return true;
		return false;

	}
	@Override
	public boolean paymentByAdmin(Customer customer) throws SQLException {
		PreparedStatement ps = null;
		ps=conn.prepareStatement("Update Customer set paid=(select paid from Customer where customerId=?)+?");
		ps.setInt(1, customer.getCustomerId());
		ps.setInt(2,customer.getPaid_fees());
		return true;
	}
	

}
