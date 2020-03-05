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
  					<li><a href="#contact">Payment</a></li>
  					<li><a href="aboutus.jsp">About Us</a></li>
  					<li><a href="contactus.jsp">Contact Us</a></li>
				</ul>
	 		</div>	
		</div>
		
		
	<form action="EmailSearchServlet" method="post">


	<div class="form2"  >	
					<fieldset style="padding:15px;color:#b21212;width:400px; margin:250px 0px 0px 450px;">
					
						<legend style="color:black;font-size:30px;">Send Blood Request to donor</legend>
						
						<table style="color:black;">
							<tr>
								<td>Enter your email id :</td>
								<td><input type="text" name="eemail" placeholder="Enter your email here" required></td>
						
							</tr>
							
										
							<tr>
								<td>Message :</td>
								<td><textarea name="emessage" placeholder="Enter your message here" required></textarea></td>
						
							</tr>
						
							<tr>
								
								<td><input type="submit" name="Send Mail" ></td>
						
							</tr>
							
						
						</table>
						
						
					</fieldset>
				</div>
	
	
	</form>	
	<h1 style="color:#FFCC00;margin-left:600px;"><b>Note : </b>We never store your password or any detail.</h1>
	</div>		 	
	
	
	
</body>
</html>
