<%@ page import="com.rdec.model.Customer" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UnPaid Member list</title>
 <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<% List<Customer> li  = (List<Customer>)request.getAttribute("list"); %>
<body>
		<jsp:include page="adminPanel.jsp"></jsp:include>
		<table class="table table-bordered" style="padding:0px;margin:0px">
			<caption></caption>
    		<thead class="thead-dark">
      		<tr>
        	<th scope="col">Id</th>
        	<th scope="col">First Name</th>
        	<th scope="col">last name</th>
        	<th scope="col">Day of payments</th>
        	<th scope="col">package</th>
        	<th scope="col">gender</th>
        	<th scope="col">email</th>
        	<th scope="col">mobile</th>
        	<th scope="col">total/paid</th>
        	<th scope="col">balance</th>
        	<th scope="col">-----</th>
   
      		</tr>
    		</thead>
    		<tbody>
    		<% for(Customer i:li){ %>
    	  	<tr>
        		<td><%=i.getCustomerId()%></td>
        		<td><%=i.getFirstName() %></td>
        		<td><%=i.getLastName() %></td>
        		<td><%=i.getDoj() %></td>
        		<td><%=i.getCustomerPackage() %></td>
         		<td><%=i.getGendar() %></td>
        		<td><%=i.getEmail() %></td>
         		<td><%=i.getMobile() %></td>
        		<td><%=i.getTotal_fee() %>/<%=i.getPaid_fees() %></td>
        		<td><%=(i.getTotal_fee() - i.getPaid_fees()) %></td>
        		<td><a href="paymentByAdmin.jsp?action=payfee&id=<%=i.getCustomerId()%>"><button type="button" class="btn btn-success btn-sm">Payment </button></a></td>
       		<%}%>
       		</tr>
    		</tbody>
		</table>
</body>
</html>