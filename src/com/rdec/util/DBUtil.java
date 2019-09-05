package com.rdec.util;

import java.sql.Connection;
import java.sql.DriverManager;
public class DBUtil {
	Connection conn=null;
	public Connection getConn(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/gymnasium","root","");
			System.out.println("connection ok");
		}catch(Exception e) {
			System.out.println("error.."+e);
		}
		
		return conn;
	}
}