<%@ page import="com.rdec.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Diet Plane</title>
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
							<!-- <li><a href="CustomerController?action=logout"><input type="button" class="btn btn-info" name="logout" value="Logout"></a></li> -->

						</ul>
					</div>
				</div>
				
			</div>
		</div></div>
	</nav>
</div> 	 
	
	
	
	<%	Customer customer = (Customer)session.getAttribute("customer");
		String pack = customer.getCustomerPackage();
		if(pack.equals("pack1")){
	%>
	
	<h1 style="color:green">The Biggest Loser 7-Day Diet Plan</h1>
		<p> Just because you're not a contestant on the show doesn't mean you can't win your own weight-loss battle at home.
		 To help you get started, we asked The Biggest Loser nutritionist Cheryl Forberg, RD, to design this seven-day meal plan,
		 which is just like the one that helps the competitors slim down.
		 with delicious recipes and easy tips, you're sure to lose weight in no time.</p>
	<hr>
	<h2 style="color:red">Monday</h2>
	<p>
	This is no deprivation diet: You'll eat three meals and two snacks daily, plus each dish<br>
	 packs a filling balance of 45 percent carbohydrates, 30 percent protein, and 25 percent healthy fats.<br>
	  When it comes to drinks, Forberg recommends sticking to no- and low-cal picks like coffee, tea, and water.<br> 
	  And to accelerate weight loss, The Biggest Loser trainer Bob Harper suggests doing 60 to 90 minutes of moderate exercise four times a week.<br> 
	  So get motivated, get started, and get ready to watch your weight drop
	</p>
	
	<h2>BreakFast</h2>
	<p>1/2 cup egg whites scrambled with 1 teaspoon olive oil,<br>
	 1 teaspoon chopped basil,<br>
	 1 teaspoon grated Parmesan,<br>
	 and 1/2 cup cherry tomatoes<br>
	1 slice whole-grain toast<br>
	1/2 cup blueberries<br>
	1 cup skim milk</p>
	
	<h2>Lunch</h2>
	<p>
		Salad made with 3/4 cup cooked bulgur, 4 ounces chopped grilled chicken breast,<br>
		 1 tablespoon shredded low-fat cheddar, diced grilled veggies (2 tablespoons onion, 1/4 cup diced zucchini, 1/2 cup bell pepper),<br>
		  1 teaspoon chopped cilantro, and 1 tablespoon low-fat vinaigrette
	</p>
	
	<h2>Snack</h2>
	<p>
		2 tablespoons hummus and 6 baby carrots
	</p>
	
	<h2>Dinner</h2>
	<p>
		4 ounces grilled salmon<br>
1 cup wild rice with 1 tablespoon slivered toasted almonds<br>
1 cup wilted baby spinach with 1 teaspoon each olive oil, balsamic vinegar, and grated Parmesan<br>
1/2 cup diced cantaloupe topped with<br>
1/2 cup all-fruit raspberry sorbet and 1 teaspoon chopped walnuts
	</p>
	
		<hr>
	
	<h2 style="color:red">Tuesday</h2>
	<p>
	This is no deprivation diet: You'll eat three meals and two snacks daily, plus each dish<br>
	 packs a filling balance of 45 percent carbohydrates, 30 percent protein, and 25 percent healthy fats.<br>
	  When it comes to drinks, Forberg recommends sticking to no- and low-cal picks like coffee, tea, and water.<br> 
	  And to accelerate weight loss, The Biggest Loser trainer Bob Harper suggests doing 60 to 90 minutes of moderate exercise four times a week.<br> 
	  So get motivated, get started, and get ready to watch your weight drop
	</p>
	
	<h2>BreakFast</h2>
	<p>1/2 cup egg whites scrambled with 1 teaspoon olive oil,<br>
	 1 teaspoon chopped basil,<br>
	 1 teaspoon grated Parmesan,<br>
	 and 1/2 cup cherry tomatoes<br>
	1 slice whole-grain toast<br>
	1/2 cup blueberries<br>
	1 cup skim milk</p>

	<h2>Lunch</h2>
	<p>
		Salad made with 3/4 cup cooked bulgur, 4 ounces chopped grilled chicken breast,<br>
		 1 tablespoon shredded low-fat cheddar, diced grilled veggies (2 tablespoons onion, 1/4 cup diced zucchini, 1/2 cup bell pepper),<br>
		  1 teaspoon chopped cilantro, and 1 tablespoon low-fat vinaigrette
	</p>
	
	<h2>Snack</h2>
	<p>
		2 tablespoons hummus and 6 baby carrots
	</p>
	
	<h2>Dinner</h2>
	<p>
		4 ounces grilled salmon<br>
1 cup wild rice with 1 tablespoon slivered toasted almonds<br>
1 cup wilted baby spinach with 1 teaspoon each olive oil, balsamic vinegar, and grated Parmesan<br>
1/2 cup diced cantaloupe topped with<br>
1/2 cup all-fruit raspberry sorbet and 1 teaspoon chopped walnuts
	</p>
	
	
	
	
		<hr>
	
	<h2 style="color:red">Wednesday</h2>
	<p>
	This is no deprivation diet: You'll eat three meals and two snacks daily, plus each dish<br>
	 packs a filling balance of 45 percent carbohydrates, 30 percent protein, and 25 percent healthy fats.<br>
	  When it comes to drinks, Forberg recommends sticking to no- and low-cal picks like coffee, tea, and water.<br> 
	  And to accelerate weight loss, The Biggest Loser trainer Bob Harper suggests doing 60 to 90 minutes of moderate exercise four times a week.<br> 
	  So get motivated, get started, and get ready to watch your weight drop
	</p>
	
	<h2>BreakFast</h2>
	<p>1/2 cup egg whites scrambled with 1 teaspoon olive oil,<br>
	 1 teaspoon chopped basil,<br>
	 1 teaspoon grated Parmesan,<br>
	 and 1/2 cup cherry tomatoes<br>
	1 slice whole-grain toast<br>
	1/2 cup blueberries<br>
	1 cup skim milk</p>

	<h2>Lunch</h2>
	<p>
		Salad made with 3/4 cup cooked bulgur, 4 ounces chopped grilled chicken breast,<br>
		 1 tablespoon shredded low-fat cheddar, diced grilled veggies (2 tablespoons onion, 1/4 cup diced zucchini, 1/2 cup bell pepper),<br>
		  1 teaspoon chopped cilantro, and 1 tablespoon low-fat vinaigrette
	</p>
	
	<h2>Snack</h2>
	<p>
		2 tablespoons hummus and 6 baby carrots
	</p>
	
	<h2>Dinner</h2>
	<p>
		4 ounces grilled salmon<br>
1 cup wild rice with 1 tablespoon slivered toasted almonds<br>
1 cup wilted baby spinach with 1 teaspoon each olive oil, balsamic vinegar, and grated Parmesan<br>
1/2 cup diced cantaloupe topped with<br>
1/2 cup all-fruit raspberry sorbet and 1 teaspoon chopped walnuts
	</p>
	
	
	
	
		<hr>
	
	<h2 style="color:red">Thursday</h2>
	<p>
	This is no deprivation diet: You'll eat three meals and two snacks daily, plus each dish<br>
	 packs a filling balance of 45 percent carbohydrates, 30 percent protein, and 25 percent healthy fats.<br>
	  When it comes to drinks, Forberg recommends sticking to no- and low-cal picks like coffee, tea, and water.<br> 
	  And to accelerate weight loss, The Biggest Loser trainer Bob Harper suggests doing 60 to 90 minutes of moderate exercise four times a week.<br> 
	  So get motivated, get started, and get ready to watch your weight drop
	</p>
	
	<h2>BreakFast</h2>
	<p>1/2 cup egg whites scrambled with 1 teaspoon olive oil,<br>
	 1 teaspoon chopped basil,<br>
	 1 teaspoon grated Parmesan,<br>
	 and 1/2 cup cherry tomatoes<br>
	1 slice whole-grain toast<br>
	1/2 cup blueberries<br>
	1 cup skim milk</p>

	<h2>Lunch</h2>
	<p>
		Salad made with 3/4 cup cooked bulgur, 4 ounces chopped grilled chicken breast,<br>
		 1 tablespoon shredded low-fat cheddar, diced grilled veggies (2 tablespoons onion, 1/4 cup diced zucchini, 1/2 cup bell pepper),<br>
		  1 teaspoon chopped cilantro, and 1 tablespoon low-fat vinaigrette
	</p>
	
	<h2>Snack</h2>
	<p>
		2 tablespoons hummus and 6 baby carrots
	</p>
	
	<h2>Dinner</h2>
	<p>
		4 ounces grilled salmon<br>
1 cup wild rice with 1 tablespoon slivered toasted almonds<br>
1 cup wilted baby spinach with 1 teaspoon each olive oil, balsamic vinegar, and grated Parmesan<br>
1/2 cup diced cantaloupe topped with<br>
1/2 cup all-fruit raspberry sorbet and 1 teaspoon chopped walnuts
	</p>
	
	
	
	
	
		<hr>
	
	<h2 style="color:red">Friday</h2>
	<p>
	This is no deprivation diet: You'll eat three meals and two snacks daily, plus each dish<br>
	 packs a filling balance of 45 percent carbohydrates, 30 percent protein, and 25 percent healthy fats.<br>
	  When it comes to drinks, Forberg recommends sticking to no- and low-cal picks like coffee, tea, and water.<br> 
	  And to accelerate weight loss, The Biggest Loser trainer Bob Harper suggests doing 60 to 90 minutes of moderate exercise four times a week.<br> 
	  So get motivated, get started, and get ready to watch your weight drop
	</p>
	
	<h2>BreakFast</h2>
	<p>1/2 cup egg whites scrambled with 1 teaspoon olive oil,<br>
	 1 teaspoon chopped basil,<br>
	 1 teaspoon grated Parmesan,<br>
	 and 1/2 cup cherry tomatoes<br>
	1 slice whole-grain toast<br>
	1/2 cup blueberries<br>
	1 cup skim milk</p>

	<h2>Lunch</h2>
	<p>
		Salad made with 3/4 cup cooked bulgur, 4 ounces chopped grilled chicken breast,<br>
		 1 tablespoon shredded low-fat cheddar, diced grilled veggies (2 tablespoons onion, 1/4 cup diced zucchini, 1/2 cup bell pepper),<br>
		  1 teaspoon chopped cilantro, and 1 tablespoon low-fat vinaigrette
	</p>
	
	<h2>Snack</h2>
	<p>
		2 tablespoons hummus and 6 baby carrots
	</p>
	
	<h2>Dinner</h2>
	<p>
		4 ounces grilled salmon<br>
1 cup wild rice with 1 tablespoon slivered toasted almonds<br>
1 cup wilted baby spinach with 1 teaspoon each olive oil, balsamic vinegar, and grated Parmesan<br>
1/2 cup diced cantaloupe topped with<br>
1/2 cup all-fruit raspberry sorbet and 1 teaspoon chopped walnuts
	</p>
	
	
	
	
		<hr>
	
	<h2 style="color:red">Saturday</h2>
	<p>
	This is no deprivation diet: You'll eat three meals and two snacks daily, plus each dish<br>
	 packs a filling balance of 45 percent carbohydrates, 30 percent protein, and 25 percent healthy fats.<br>
	  When it comes to drinks, Forberg recommends sticking to no- and low-cal picks like coffee, tea, and water.<br> 
	  And to accelerate weight loss, The Biggest Loser trainer Bob Harper suggests doing 60 to 90 minutes of moderate exercise four times a week.<br> 
	  So get motivated, get started, and get ready to watch your weight drop
	</p>
	
	<h2>BreakFast</h2>
	<p>1/2 cup egg whites scrambled with 1 teaspoon olive oil,<br>
	 1 teaspoon chopped basil,<br>
	 1 teaspoon grated Parmesan,<br>
	 and 1/2 cup cherry tomatoes<br>
	1 slice whole-grain toast<br>
	1/2 cup blueberries<br>
	1 cup skim milk</p>

	<h2>Lunch</h2>
	<p>
		Salad made with 3/4 cup cooked bulgur, 4 ounces chopped grilled chicken breast,<br>
		 1 tablespoon shredded low-fat cheddar, diced grilled veggies (2 tablespoons onion, 1/4 cup diced zucchini, 1/2 cup bell pepper),<br>
		  1 teaspoon chopped cilantro, and 1 tablespoon low-fat vinaigrette
	</p>
	
	<h2>Snack</h2>
	<p>
		2 tablespoons hummus and 6 baby carrots
	</p>
	
	<h2>Dinner</h2>
	<p>
		4 ounces grilled salmon<br>
1 cup wild rice with 1 tablespoon slivered toasted almonds<br>
1 cup wilted baby spinach with 1 teaspoon each olive oil, balsamic vinegar, and grated Parmesan<br>
1/2 cup diced cantaloupe topped with<br>
1/2 cup all-fruit raspberry sorbet and 1 teaspoon chopped walnuts
	</p>
	
	
	
	
		<hr>
	
	<h2 style="color:red">Sunday</h2>
	<p>
	This is no deprivation diet: You'll eat three meals and two snacks daily, plus each dish<br>
	 packs a filling balance of 45 percent carbohydrates, 30 percent protein, and 25 percent healthy fats.<br>
	  When it comes to drinks, Forberg recommends sticking to no- and low-cal picks like coffee, tea, and water.<br> 
	  And to accelerate weight loss, The Biggest Loser trainer Bob Harper suggests doing 60 to 90 minutes of moderate exercise four times a week.<br> 
	  So get motivated, get started, and get ready to watch your weight drop
	</p>
	
	<h2>BreakFast</h2>
	<p>1/2 cup egg whites scrambled with 1 teaspoon olive oil,<br>
	 1 teaspoon chopped basil,<br>
	 1 teaspoon grated Parmesan,<br>
	 and 1/2 cup cherry tomatoes<br>
	1 slice whole-grain toast<br>
	1/2 cup blueberries<br>
	1 cup skim milk</p>

	<h2>Lunch</h2>
	<p>
		Salad made with 3/4 cup cooked bulgur, 4 ounces chopped grilled chicken breast,<br>
		 1 tablespoon shredded low-fat cheddar, diced grilled veggies (2 tablespoons onion, 1/4 cup diced zucchini, 1/2 cup bell pepper),<br>
		  1 teaspoon chopped cilantro, and 1 tablespoon low-fat vinaigrette
	</p>
	
	<h2>Snack</h2>
	<p>
		2 tablespoons hummus and 6 baby carrots
	</p>
	
	<h2>Dinner</h2>
	<p>
		4 ounces grilled salmon<br>
1 cup wild rice with 1 tablespoon slivered toasted almonds<br>
1 cup wilted baby spinach with 1 teaspoon each olive oil, balsamic vinegar, and grated Parmesan<br>
1/2 cup diced cantaloupe topped with<br>
1/2 cup all-fruit raspberry sorbet and 1 teaspoon chopped walnuts
	</p>
	
	
	
	
	
	
	
	
	
	
	
	
	<a href="dietMeal.jsp?val=<%=pack%>"><img src="images/lose-7day.jpg" alt="not fonud"></a>	
	<%}
		else if(pack.equals("pack2")){
	%>
		
	
	
	
	
	
	
	
	
	
	
	
	
	<a href=""><img src="images/lose-7day.jpg"></a>	
	<a href=""><img src="images/lose-7day.jpg"></a>	
	<%}
		else if(pack.equals("pack3")){
			
	%>
	<a href=""><img src="images/lose-7day.jpg"></a>	
	<a href=""><img src="images/lose-7day.jpg"></a>	
	<a href=""><img src="images/lose-7day.jpg"></a>	
	<%} %>
	
		
	
		
</body>
</html>