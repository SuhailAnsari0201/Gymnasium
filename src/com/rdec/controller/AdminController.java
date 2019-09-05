package com.rdec.controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.rdec.model.Admin;
import com.rdec.model.Customer;
import com.rdec.model.NewPackage;
import com.rdec.services.AdminServiceImpl;
import com.rdec.services.CustomerServiceImpl;

/**
 * Servlet implementation class AdminController
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AdminServiceImpl adminService = new AdminServiceImpl();
	CustomerServiceImpl customerService = new CustomerServiceImpl();
	List<Customer> list = null;
    public AdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			RequestDispatcher rd = null;
			String action = request.getParameter("action");
			
			if(action.equals("adminLogin")) {
				String email = request.getParameter("email");
				String password = request.getParameter("password");
				Admin admin = new Admin();
				admin.setAdminEmail(email);
				admin.setPassword(password);
				admin = adminService.adminLogin(admin);
				HttpSession session = request.getSession() ;
				session.setAttribute("session",admin);
				rd = request.getRequestDispatcher("adminPanel.jsp");
			}
			else if(action.equals("getAllCustomer")) {
				list = customerService.getAllCustomer();
				request.setAttribute("list", list);
				if(list!=null) {
					rd = request.getRequestDispatcher("viewAndEditCustomer.jsp");
				}
				else {
					rd = request.getRequestDispatcher("adminPanel.jsp");
				}
				
			}
			else if(action.equals("editCustomer")) {
				String customerId = request.getParameter("id");
				int i = Integer.parseInt(customerId);
				Customer customer = new Customer();
				customer = customerService.getCustomerById(i);
				request.setAttribute("customer", customer);
				rd = request.getRequestDispatcher("editCustomerByAdmin.jsp");
			}
			else if(action.equals("deleteCustomer")) {
				String customerId = request.getParameter("id");
				Customer customer = new Customer();
				customer.setCustomerId(Integer.parseInt(customerId));
				boolean result = customerService.deleteCustomer(customer);
				if(result) {
					list = customerService.getAllCustomer();
					request.setAttribute("list", list);
					rd = request.getRequestDispatcher("viewAndEditCustomer.jsp");
				}
			}
			else if(action.equals("getAllunPaidCustomer")) {
				list = customerService.getUnpaidCustomer();
				request.setAttribute("list", list);
				if(list!=null) {
					rd = request.getRequestDispatcher("unpaidCustomerList.jsp");
				}
				else {
					request.setAttribute("msg","no record found.");
					rd = request.getRequestDispatcher("adminPanel.jsp");
				}
				
				
			}
			else if(action.equals("addNewPackage")) {
				String newPackageName = request.getParameter("packageName");
				int fees = Integer.parseInt(request.getParameter("fees"));
				NewPackage newPack = new NewPackage();
				newPack.setPackageName(newPackageName);
				newPack.setFees(fees);
				boolean b = adminService.addNewPackage(newPack);
				if(b) {
					rd = request.getRequestDispatcher("adminPanel.jsp");
				}
			}
			else if(action.equals("payment")) {
				{
					Customer customer = new Customer();
					int id = Integer.parseInt(request.getParameter("customerId"));
					customer = customerService.getCustomerById(id);
					if(customer!=null) {
						int fe = Integer.parseInt(request.getParameter("rs"));
						customer.setPaid_fees(fe);
						adminService.paymentByAdmin(customer);
						rd = request.getRequestDispatcher("unpaidCustomerList.jsp");
					}
					else {
						rd = request.getRequestDispatcher("paymentByAdmin.jsp?msg=Customer Id not found");
					}
				}
				
			}
			else if(action.equals("logout")) {
				HttpSession session = request.getSession(false);
				session.invalidate();
				rd = request.getRequestDispatcher("index.jsp");
			}
			rd.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
