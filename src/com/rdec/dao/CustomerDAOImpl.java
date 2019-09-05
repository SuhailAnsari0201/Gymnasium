package com.rdec.dao;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.rdec.model.Customer;
import com.rdec.model.NewPackage;
import com.rdec.util.DBUtil;

public class CustomerDAOImpl implements CustomerDAO{

	private Connection conn=new DBUtil().getConn();
	FileInputStream fis=null;
	@Override
	public boolean addCustomer(Customer customer) throws SQLException {
		PreparedStatement ps=null;
	
		System.out.println("11111111");
		String sql = "INSERT INTO customer(firstname,lastname,dob,doj,customerpackage,gendar,email,mobile,address,total_fee,password) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
	
		ps = conn.prepareStatement(sql);
		
		ps.setString(1, customer.getFirstName());
		ps.setString(2, customer.getLastName());
		ps.setDate(3, new java.sql.Date(customer.getDob().getTime()));
		ps.setDate(4, new java.sql.Date(customer.getDoj().getTime()));
		
		ps.setString(5, customer.getCustomerPackage());
		ps.setString(6,customer.getGendar());
		ps.setString(7,customer.getEmail());
		ps.setString(8,customer.getMobile());
		ps.setString(9,customer.getAddress());
		ps.setInt(10, customer.getTotal_fee());
		ps.setString(11,customer.getPassword());
		/* ps.setBlob(12, customer.getImage()); */
		
		int r=ps.executeUpdate();
		if(r>0)
			return true;
		return false;
	}
	@Override
	public Customer loginCustomer(Customer customer) throws SQLException {
		PreparedStatement ps=null;
		
		String sql = "SELECT * FROM customer WHERE email=? AND password=?";
		ps=conn.prepareStatement(sql);
		ps.setString(1, customer.getEmail());
		ps.setString(2, customer.getPassword());
		
		ResultSet rs = ps.executeQuery();
		if(rs.next()) {
			customer.setCustomerId(rs.getInt(1));
			customer.setFirstName(rs.getString(2));
			customer.setLastName(rs.getString(3));
			customer.setDob(rs.getDate(4));
			customer.setDoj(rs.getDate(5));
			customer.setCustomerPackage(rs.getString(6));
			customer.setEmail(rs.getString(8));
			customer.setGendar(rs.getString(7));
			customer.setMobile(rs.getString(9));
			customer.setAddress(rs.getString(10));
			return customer;
		}
		return null;
		
	}
	@Override
	public boolean deleteCustomer(Customer customer) throws SQLException {
		PreparedStatement ps =null;
		ps = conn.prepareStatement("DELETE FROM customer WHERE customerid=?");
		ps.setInt(1, customer.getCustomerId());
		int r=ps.executeUpdate();
		if(r>0) {
			return true;
		}
		return false;
	}
	@Override
	public List<Customer> getAllCustomer() throws SQLException {
		List<Customer> list = new ArrayList<>();;
		PreparedStatement ps=null;
		ps=conn.prepareStatement("SELECT * FROM customer");
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			Customer customer = new Customer();
			customer.setCustomerId(Integer.parseInt(rs.getString(1)));
			customer.setFirstName(rs.getString(2));
			customer.setLastName(rs.getString(3));
			customer.setDob(rs.getDate(4));
			customer.setDoj(rs.getDate(5));
			customer.setCustomerPackage(rs.getString(6));
			customer.setGendar(rs.getString(7));
			customer.setEmail(rs.getString(8));
			customer.setMobile(rs.getString(9));
			customer.setAddress(rs.getString(10));
			customer.setPassword(rs.getString(13));
			list.add(customer);
		}
		return list;
	}
	@Override
	public List<Customer> getUnpaidCustomer() throws SQLException {
		List<Customer> list = new ArrayList<>();;
		PreparedStatement ps=null;
		ps=conn.prepareStatement("SELECT * FROM customer WHERE (total_fee - paid) > 0");
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			Customer customer = new Customer();
			customer.setCustomerId(rs.getInt(1));
			customer.setFirstName(rs.getString(2));
			customer.setLastName(rs.getString(3));
			customer.setDob(rs.getDate(4));
			customer.setDoj(rs.getDate(5));
			customer.setCustomerPackage(rs.getString(6));
			customer.setGendar(rs.getString(7));
			customer.setEmail(rs.getString(8));
			customer.setMobile(rs.getString(9));
			customer.setAddress(rs.getString(10));
			customer.setTotal_fee(rs.getInt(11));
			customer.setPaid_fees(rs.getInt(12));
			customer.setPassword(rs.getString(13));
			list.add(customer);
		}
		return list;
	}
	@Override
	public int getPackagefee(String packageName) throws SQLException {
		PreparedStatement ps=null;
		ps=conn.prepareStatement("SELECT fees FROM package WHERE packageName=?");
		ps.setString(1, packageName);
		ResultSet rs = ps.executeQuery();
		int fee=0;
		if(rs.next()) {
			fee = rs.getInt("fees");
		}
		return fee;
	}
	@Override
	public boolean getCustomerByEmail(String email) throws SQLException {
		PreparedStatement ps=null;
		ps=conn.prepareStatement("SELECT * FROM customer WHERE email=?");
		ps.setString(1, email);
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()) {

			return true;
		}
		return false;
	}
	@Override
	public List<NewPackage> getAllPackage() throws SQLException {
		List<NewPackage> list = new ArrayList<>();;
		PreparedStatement ps=null;
		ps=conn.prepareStatement("SELECT * FROM package");
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			NewPackage pac = new NewPackage();
			pac.setPackageName(rs.getString(1));
			list.add(pac);
		}
		return list;
	}
	@Override
	public Customer getCustomerById(int id) throws SQLException {
		PreparedStatement ps=null;
		ps=conn.prepareStatement("SELECT * FROM customer WHERE customerId=?");
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		if(rs.next()) {
			Customer customer = new Customer();
			customer.setCustomerId(rs.getInt(1));
			customer.setFirstName(rs.getString(2));
			customer.setLastName(rs.getString(3));
			customer.setDob(rs.getDate(4));
			customer.setDoj(rs.getDate(5));
			customer.setCustomerPackage(rs.getString(6));
			customer.setGendar(rs.getString(7));
			customer.setEmail(rs.getString(8));
			customer.setMobile(rs.getString(9));
			customer.setAddress(rs.getString(10));
			customer.setTotal_fee(rs.getInt(11));
			customer.setPaid_fees(rs.getInt(12));
			customer.setPassword(rs.getString(13));
			return customer;
		}
		return null;
	}
	@Override
	public boolean updateCustomer(Customer customer) throws SQLException {
		PreparedStatement ps=null;
		
		System.out.println("11111111");
		String sql = "UPDATE customer SET firstname=?,lastname=?,dob=?,address=?,email=?,mobile=?,password=? WHERE customerid=?";
	
		ps = conn.prepareStatement(sql);
		
		ps.setString(1, customer.getFirstName());
		ps.setString(2, customer.getLastName());
		ps.setDate(3, new java.sql.Date(customer.getDob().getTime()));
		ps.setString(4, customer.getAddress());
		ps.setString(5,customer.getEmail());
		ps.setString(6,customer.getMobile());
		ps.setString(7,customer.getPassword());
		ps.setInt(8,customer.getCustomerId());
		int r=ps.executeUpdate();
		if(r>0)
			return true;
		return false;
	}
	@Override
	public boolean updateCustomerProfile(Customer customer) throws SQLException {
PreparedStatement ps=null;
		
		System.out.println("11111111");
		String sql = "UPDATE customer SET firstname=?,lastname=?,dob=?,email=?,mobile=?,address=?,password=? WHERE customerid=?";
	
		ps = conn.prepareStatement(sql);
		
		ps.setString(1, customer.getFirstName());
		ps.setString(2, customer.getLastName());
		ps.setDate(3, new java.sql.Date(customer.getDob().getTime()));
		
		ps.setString(4,customer.getEmail());
		ps.setString(5,customer.getMobile());
		ps.setString(6,customer.getAddress());
		ps.setString(7,customer.getPassword());
		ps.setInt(8,customer.getCustomerId());
		
		
		int r=ps.executeUpdate();
		if(r>0)
			return true;
		return false;
	}
	
	

}
