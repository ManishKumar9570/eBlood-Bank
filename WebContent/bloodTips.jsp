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
		
	<h1 style="text-align:center;font-size:60px;color:#33CC99;"><b><u>Blood Tips</u></b></h1>
<h2 style="margin-left:300px;">In the days before your donation, eat healthy, iron-rich foods such as spinach, red meat, fish, poultry, beans, iron-fortified cereals and raisins.<br>
Get a good night's sleep.
At least 3 hours before donating, eat a balanced meal and avoid fatty foods.
</h2>		
			 	
	</div>
	
	
</body>
</html>
