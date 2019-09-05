<%@ page import="com.rdec.model.Customer" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View And Edit</title>
 <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<% List<Customer> li  = (List<Customer>)request.getAttribute("list"); 
	
%>
<body>
		<jsp:include page="adminPanel.jsp"></jsp:include>
		<table class="table table-bordered" style="padding:0px;margin:0px">
			<caption></caption>
    		<thead class="thead-dark">
      		<tr>
        	<th scope="col">Id</th>
        	<th scope="col">First Name</th>
        	<th scope="col">last name</th>
        	<th scope="col">DOB</th>
        	<th scope="col">DOJ</th>
        	<th scope="col">package</th>
        	<th scope="col">gender</th>
        	<th scope="col">email</th>
        	<th scope="col">mobile</th>
        	<th scope="col">Address</th>
        	<th scope="col">password</th>
        	<th scope="col">Edit</th>
        	<th scope="col">Delete</th>
      		</tr>
    		</thead>
    		<tbody>
    		<% for(Customer i:li){request.setAttribute("customer",i); %>
    	  	<tr>
        		<td><%=i.getCustomerId()%></td>
        		<td><%=i.getFirstName() %></td>
        		<td><%=i.getLastName() %></td>
        		<td><%=i.getDob()%></td>
        		<td><%=i.getDoj() %></td>
        		<td><%=i.getCustomerPackage() %></td>
         		<td><%=i.getGendar() %></td>
        		<td><%=i.getEmail() %></td>
         		<td><%=i.getMobile() %></td>
         		<td><%=i.getAddress() %></td>
        		<td><%=i.getPassword() %></td>
        		<td><a href="AdminController?action=editCustomer&id=<%=i.getCustomerId()%>"><button type="button" class="btn btn-success btn-sm">Edit</button></a></td>
        		<td><a href="AdminController?action=deleteCustomer&id=<%=i.getCustomerId()%>"><button type="button" class="btn btn-danger btn-sm">Delete</button></a></td>
       		<%}%>
       		</tr>
    		</tbody>
		</table>
</body>
</html>