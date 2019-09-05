<%@ page import="com.rdec.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<head>
  <title>Update Profile</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<link rel="stylesheet" href="css/util.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
  
</head>
<% Customer customer = (Customer)request.getAttribute("customer"); %>

<body>
<nav class="fh5co-nav" role="navigation">
		<div class="top">
			
		
		<div class="top-menu">
			<div class="container">
				<div class="row">
					<div class="col-xs-2">
						<div id="fh5co-logo"><a href="index.jsp">Stamina<span>.</span></a></div>
					</div>
					<div class="col-xs-10 text-right menu">
						<ul>
							<li><a href="adminPanel.jsp">Dashboard</a></li>
							<li><a href="customerSignUp.jsp">New Registration</a></li>
							<li><a href="AdminController?action=getAllCustomer">View/Edit Member</a></li>
							<li><a href="AdminController?action=getAllunPaidCustomer">unPaid member</a></li>
							<li><a href="paymentByAdmin.jsp">Make Payment</a></li>
							<li><a href="AdminController?action=logout"><input type="button" class="btn btn-info" name="logout" value="Logout"></a></li>
						</ul>
					</div>
				</div>
				
			</div>
		</div></div>
	</nav>

<div class="container bootstrap snippet">
    <div class="row">
  		<div class="col-sm-8" style="margin-top:25px"><h1 style="color:green;text-transform: uppercase;"><%=customer.getFirstName() %> <%=customer.getLastName() %></h1></div>
    </div>
    <div class="row" style="flot-left:0px">
  		<div class="col-sm-3"><!--left col-->
              

      <div class="text-center">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
        <h6>Upload a different photo...</h6>
        <input type="file" class="text-center center-block file-upload">
      </div>
        </div><!--/col-3-->
    	<div class="col-sm-9">
           
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                  <form class="form" action="CustomerController" method="get" id="registrationForm">
                  <input type="hidden" name="action" value="updateCustomerByAdmin">
                  <input type="hidden" name="customerId" value="<%=customer.getCustomerId() %>">
                  <div class="form-group">
                  <div class="col-xs-12">
                            <label>Customer ID</label>
                             <p><%=customer.getCustomerId() %></p>
                          </div>
                      </div>
          
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label>First name</label>
                              <input type="text" class="form-control" name="first_name" value="<%=customer.getFirstName() %>" placeholder="first name" title="enter your first name if any.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label>Last name</label>
                              <input type="text" class="form-control" name="last_name" value="<%=customer.getLastName() %>" placeholder="last name" title="enter your last name if any.">
                          </div>
                      </div>
                      
          
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label>DOB:</label>
                              <input type="date" class="form-control" name="dob" id="dob" value="<%=customer.getDob() %>" title="enter your dob.">
                          </div>
                      </div>
          
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label>Mobile</label>
                              <input type="text" class="form-control" name="mobile" value="<%=customer.getMobile() %>" placeholder="enter mobile number" title="enter your mobile number if any.">
                          </div>
                      </div>
                      
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label>Email</label>
                              <input type="email" class="form-control" name="email" value="<%=customer.getEmail() %>" placeholder="you@email.com" title="enter your email.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label>Address</label>
                              <input type="text" class="form-control" name="address" value="<%=customer.getAddress() %>" placeholder="somewhere" title="enter a location">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label>Password</label>
                              <input type="password" class="form-control" name="password" value="<%=customer.getPassword() %>" placeholder="password" title="enter your password.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label>Confirm Password</label>
                              <input type="password" class="form-control" name="cpassword" value="<%=customer.getPassword() %>" placeholder="Confirm password" title="enter your password2.">
                          </div>
                      </div>
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                            </div>
                      </div>
              	</form>
              
             </div><!--/tab-pane-->
             <div class="tab-pane" id="messages">
              </div><!--/tab-pane-->
          </div><!--/tab-content-->

        </div><!--/col-9-->
    </div><!--/row-->
</body>                                                      