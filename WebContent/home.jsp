<!DOCTYPE html>
<html>
<head>
<title> home </title>
<link rel="stylesheet"  type="text/css" href="css/style.css">
<link rel="stylesheet"  type="text/css" href="css/form.css">
</head>
<body>

	<div class="bgimage">
		<div class="menu">
	      	<div class="leftmenu">
	          	<img src="images/logo3.png" style="width:35%; height:35%;margin-top:5%; margin-left:10%;">
	      	</div>
	      	<div class="rightmenu">
            	<div class="loginform">
            		<form action="LoginServlet" method="post">
	  					<input type="text" name="email_id" placeholder="Email id" required>
	  					<input type="password" name="password" placeholder="password" required>
	  					<input type="submit" value="Login">
	  				</form>
	  				<a href="register.jsp" style="color:black;text-decoration:none"><button id="registerButton">register</button></a>
            	</div>	            
	      	</div>
	 	</div>
	 	<div class="navigation">
	 		<div style="margin-left:28%;">
	 			<ul>
	 				<li><a href="home.jsp">Home</a></li>
  					<li><a href="bloodTips.jsp">Blood Tips</a></li>
  					<li><a href="feedback.jsp">Feedback</a></li>
  					<li><a href="Payment.jsp">Payment</a></li>
  					<li><a href="aboutus.jsp">About Us</a></li>
  					<li><a href="contactus.jsp">Contact Us</a></li>
				</ul>
	 		</div>	
		</div>
	
		<div class="container">
			<form action="SearchServlet" method="post">
			 	<div style="width:100%; float:left">
			 		<div class="loginform" style="margin-top:3%;margin-right:10%;">
			 			<p style="color:white; font-size:30px;">Blood Group :</p>
						<select name="blood_group" style="background-color:rgb(255, 227, 227)" required>
						  	<option value="A+">A+</option>
						  	<option value="A-">A-</option>
						  	<option value="B+">B+</option>
						  	<option value="B-">B-</option>
						  	<option value="AB+">AB+</option>
						  	<option value="AB-">AB-</option>
						  	<option value="O+">O+</option>
						  	<option value="O-">O-</option>
						</select>
					</div>
			 	</div>
		 		<div style="width:100%; float:left">
		 			<div class="loginform" style="margin-right:10%;">
					<p style="color:white; font-size:30px;">City :</p>
  					<select name="city" style="background-color:rgb(255, 227, 227)" required>
					  <option value="Delhi">Delhi</option>
					  <option value="Mumbai">Mumbai</option>
					  <option value="Banglore">Banglore</option>
					  <option value="Kolkata">Kolkata</option>
					  <option value="Hyderabad">Hyderabad</option>
					  <option value="Chennai">Chennai</option>
					  <option value="Raipur">Raipur</option>
					  <option value="Patna">Patna</option>
					</select>
  					</div>
		 		</div>
					
	  				<input type="submit" value="Search Blood Donors" style="float:right; margin-right:15%; width:60%;">
	  		</form>
		</div>
			 	
	</div>
	
</body>
</html>
