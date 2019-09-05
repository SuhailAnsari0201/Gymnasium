<%@ page import="com.rdec.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
<% 
Customer customer = (Customer)session.getAttribute("customer");
if(customer!=null){
	session.setAttribute("customer",customer);
%>
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
					<div class="col-xs-10 text-right menu-1">
						<ul>
							<li><a href="customerPanel.jsp">Dashbord</a></li>
							<li><a href="customerSchedule.jsp">My Schedule</a></li>
							
							<li><a href="dietMeal.jsp">Diet Meal</a></li>
							<li><a href="customerProfile.jsp">Profile</a></li>
							<!-- <li><a href="logout.jsp"><input type="button" class="btn btn-info" name="logout" value="Logout"></a></li> -->

						</ul>
					</div>
				</div>
				
			</div>
		</div></div>
	</nav>
</div>




<body>
	<header id="fh5co-header" class="fh5co-cover" role="banner" style="background-image:url(images/index.jpg);" data-stellar-background-ratio="0.5">
		
		<div class="container">
			<div class="row">
				<div class="col-md-8 ">
					
						<div class="display-tc animate-box" data-animate-effect="fadeIn">
							Welcome <h1><%=customer.getFirstName()%></h1>
							
							
						</div>
					
				</div>
			</div>
		</div>
	</header>
	
	<%}
		else{
			response.sendRedirect("customerLogin.jsp?msg=email or password not match.");
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