package com.rdec.controller;


import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.rdec.model.Customer;
import com.rdec.model.NewPackage;

import com.rdec.services.CustomerServiceImpl;
/**
 * Servlet implementation class CustomerController
 */
@WebServlet("/CustomerController")
@javax.servlet.annotation.MultipartConfig
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CustomerServiceImpl service = new CustomerServiceImpl();
	
	RequestDispatcher rd = null;
	List<Customer> list = null;
	
		
    public CustomerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("-----Customer Controller-----");
		String action=request.getParameter("action");
		if(action.equals("customerRegistration")) {
			String password = request.getParameter("password");
			String cpassword = request.getParameter("cpassword");
			if(password.equals(cpassword)) {
				String fName = request.getParameter("first_name");
				String lName = request.getParameter("last_name");
				String dob = request.getParameter("dob");
				String customerPackage = request.getParameter("package");
				String gender = request.getParameter("gender");
				String email = request.getParameter("email");
				String mobile = request.getParameter("mobile");
				String address = request.getParameter("address");
				Part filePart = request.getPart("image");
				
				InputStream is = filePart.getInputStream();
				/*
				 * byte[] i = new byte[(int) image.length()]; fis.read(i); fis.close();
				 */
				Date date_dob=null,date_doj=null;
				try {
					
					date_dob = new SimpleDateFormat("yyyy-MM-dd").parse(dob);
					date_doj = new Date();
					
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				Customer customer = new Customer();
				customer.setFirstName(fName);
				customer.setLastName(lName);
				customer.setDob(date_dob);
				customer.setDoj(date_doj);
				customer.setCustomerPackage(customerPackage);
				customer.setEmail(email);
				customer.setGendar(gender);
				customer.setMobile(mobile);
				customer.setAddress(address);
				customer.setTotal_fee(service.getPackagefee(customerPackage));
				customer.setPassword(cpassword);
				
				
				
				customer.setImage(is);
				
				boolean result = service.addCustomer(customer);
				System.out.println("dateerror");
				request.setAttribute("msg", result);
				if(result) {
					
					rd = request.getRequestDispatcher("customerLogin.jsp");
				}
				else {
					rd = request.getRequestDispatcher("customerRegistration.jsp");
				}
			}
		}
		else if(action.equals("updateCustomerByAdmin")) {
			String i = request.getParameter("customerId");
			int id = Integer.parseInt(i);
			String fName = request.getParameter("first_name");
			String lName = request.getParameter("last_name");
			String dob = request.getParameter("dob");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			String mobile = request.getParameter("mobile");
			String password = request.getParameter("password");
			Date date_dob=null;
			try {
				
				date_dob = new SimpleDateFormat("yyyy-MM-dd").parse(dob);
		
				
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Customer customer = new Customer();
			customer.setCustomerId(id);
			customer.setFirstName(fName);
			customer.setLastName(lName);
			customer.setDob(date_dob);
			customer.setEmail(email);
			customer.setAddress(address);
			customer.setMobile(mobile);
			customer.setPassword(password);
			
			boolean result = service.updateCustomer(customer);
			rd = request.getRequestDispatcher("viewAndEditCustomer.jsp");
			if(result) {
				list = service.getAllCustomer();
				request.setAttribute("list", list);
				
			}
			else {
				request.setAttribute("msg",null);
				
			}
			
		}
		else if(action.equals("updateCustomerProfile")) {
			String password = request.getParameter("password");
			String cpassword = request.getParameter("cpassword");
			if(password.equals(cpassword)) {
				String id = request.getParameter("customerId");
				String fName = request.getParameter("first_name");
				String lName = request.getParameter("last_name");
				String dob = request.getParameter("dob");
				String email = request.getParameter("email");
				String mobile = request.getParameter("mobile");
				String address = request.getParameter("address");
				Date date_dob=null;
				try {
					
					date_dob = new SimpleDateFormat("yyyy-MM-dd").parse(dob);
			
					
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				Customer customer = new Customer();
				customer.setCustomerId(Integer.parseInt(id));
				customer.setFirstName(fName);
				customer.setLastName(lName);
				customer.setDob(date_dob);
				customer.setEmail(email);
				customer.setAddress(address);
				customer.setMobile(mobile);
				customer.setPassword(cpassword);
				
				boolean result = service.updateCustomerProfile(customer);
				
				if(result) {
					customer = service.getCustomerById(Integer.parseInt(id));
					HttpSession session = request.getSession();
					session.setAttribute("customer", customer);
					rd = request.getRequestDispatcher("customerPanel.jsp");
				}
				else {
					request.setAttribute("msg",null);
					rd = request.getRequestDispatcher("customerPanel.jsp");
				}
				
			}
			else {
				rd = request.getRequestDispatcher("customerProfile.jsp?msg=password not same pls try again");
			}
		}
		else if(action.equals("customerLogin")) {
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			Customer customer = new Customer();
			customer.setEmail(email);
			customer.setPassword(password);
			customer = service.loginCustomer(customer);
			HttpSession session = request.getSession();
			session.setAttribute("customer", customer);
			rd = request.getRequestDispatcher("customerPanel.jsp");
			
		}
		else if(action.equals("getCustomerByEmail")) {
			String email = request.getParameter("email");
			boolean result = service.getCustomerByEmail(email);
			if(result) {
				//forgat
			}
		}
		else if(action.equals("getCustomerById")) {
				String id = request.getParameter("id");
				int i = Integer.parseInt(id);
				Customer customer = new Customer();
				customer = service.getCustomerById(i);
				request.setAttribute("customer", customer);
				rd = request.getRequestDispatcher("editCustomerByAdmin.jsp");
				
			}
			
		else if(action.equals("getAllPackage")) {
			List<NewPackage> list = new ArrayList<NewPackage>();
			list = service.getAllPackage();
			request.setAttribute("list", list);
			rd = request.getRequestDispatcher("signUp.jsp");
			
		}
		else if(action.equals("logout")) {
			HttpSession session = request.getSession(false);
			session.invalidate();
			rd = request.getRequestDispatcher("index.jsp");
		}
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action.equals("customerRegistration")) {
			String password = request.getParameter("password");
			String cpassword = request.getParameter("cpassword");
			if(password.equals(cpassword)) {
				String fName = request.getParameter("first_name");
				String lName = request.getParameter("last_name");
				String dob = request.getParameter("dob");
				String customerPackage = request.getParameter("package");
				String gender = request.getParameter("gender");
				String email = request.getParameter("email");
				String mobile = request.getParameter("mobile");
				String address = request.getParameter("address");
				/*
				 * Part filePart = request.getPart("image");
				 * 
				 * InputStream is = filePart.getInputStream();
				 */				/*
				 * byte[] i = new byte[(int) image.length()]; fis.read(i); fis.close();
				 */
				Date date_dob=null,date_doj=null;
				try {
					
					date_dob = new SimpleDateFormat("yyyy-MM-dd").parse(dob);
					date_doj = new Date();
					
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				Customer customer = new Customer();
				customer.setFirstName(fName);
				customer.setLastName(lName);
				customer.setDob(date_dob);
				customer.setDoj(date_doj);
				customer.setCustomerPackage(customerPackage);
				customer.setEmail(email);
				customer.setGendar(gender);
				customer.setMobile(mobile);
				customer.setAddress(address);
				customer.setTotal_fee(service.getPackagefee(customerPackage));
				customer.setPassword(cpassword);
				
				
				
				/* customer.setImage(is); */
				
				boolean result = service.addCustomer(customer);
				System.out.println("dateerror");
				request.setAttribute("msg", result);
				if(result) {
					
					rd = request.getRequestDispatcher("customerLogin.jsp");
				}
				else {
					rd = request.getRequestDispatcher("customerRegistration.jsp");
				}
			}
		}
		
		rd.forward(request, response);
	}

}
