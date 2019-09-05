<%@ page import="com.rdec.model.Admin" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>
 <!-- <script language="JavaScript" type="text/javascript">
    window.history.forward();              
 </script> -->
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

<body>
	
<div class="fh5co-loader"></div>
	
	<div id="page">
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
<% 
Admin admin = (Admin)session.getAttribute("session");
session.setAttribute("session",admin);
if(admin!=null){
%>
Welcome <h1><%=admin.getAdminName() %></h1>

	
	<%}
		else{
			response.sendRedirect("adminLogin.jsp?msg=email or password not match.");
		}
%>
<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>
</body>
</html>