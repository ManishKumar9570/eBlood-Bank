<!DOCTYPE html>
<html>
<head>
<title> home </title>
<link rel="stylesheet"  type="text/css" href="css/style.css">
<link rel="stylesheet"  type="text/css" href="css/form2.css">

</head>
<body>

	<div class="bgimage2">
		<div class="menu">
	      	<div class="leftmenu">
	          	<img src="images/logo3.png" style="width:35%; height:35%;margin-top:5%; margin-left:10%;">
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
		
			<form action="RegistrationServlet" method="post">
				<div class="form1">	
					<fieldset style="padding:15px;color:#b21212;">
					
						<legend>Login Details</legend>
						
						<p style="color:black">Email id :</p>
						<input type="text" name="email_id" required>
							
						<p style="color:black">Password :</p>
						<input type="password" id="password" name="password" required>
						
					</fieldset>
				</div>
				<div class="form1">		
					<fieldset style="padding:15px;color:#b21212;">
					
						<legend>Donor's Information </legend>
						
						<p style="color:black">Name :</p>
						<input type="text" name="name"  required>
						
						<p style="color:black">Age :</p>
						<input type="number" name="age"  required>
						
						<p style="color:black">Gender :</p>
						<select name="gender" required>
						  <option value="Male">Male</option>
						  <option value="Female">Female</option>
						  <option value="Other">Other</option>
						</select>
						
						<p style="color:black">Blood Group :</p>
						<select name="blood_group" required>
						  <option value="A+">A+</option>
						  <option value="A-">A-</option>
						  <option value="B+">B+</option>
						  <option value="B-">B-</option>
						  <option value="AB+">AB+</option>
						  <option value="AB-">AB-</option>
						  <option value="O+">O+</option>
						  <option value="O-">O-</option>
						</select>
						
						<p style="color:black">Weight :</p>
						<input type="number"  step="0.01" name="weight"  required>
						
					</fieldset>	
				</div>	
				
				<div class="form1">
					<fieldset style="padding:15px;color:#b21212;">
					
						<legend>Contact Details</legend>
						
						<p style="color:black">Mobile Number :</p>
						<input type="text" name="mobile_number"  required>
						
						<p style="color:black">City :</p>
						<select name="city" required>
						  <option value="Delhi">Delhi</option>
						  <option value="Mumbai">Mumbai</option>
						  <option value="Banglore">Banglore</option>
						  <option value="Kolkata">Kolkata</option>
						  <option value="Hyderabad">Hyderabad</option>
						  <option value="Chennai">Chennai</option>
						  <option value="Raipur">Raipur</option>
						  <option value="Patna">Patna</option>
						</select>
						
						<p style="color:black">Address :</p>
						<textarea rows="2" cols="5" name="address" required></textarea>
						
					</fieldset>
				</div>
				<input type="checkbox" name="terms&condns" value="true" style="margin-top:5%;" required> I agree to <a href="#">terms and condition</a> and consent to have my donor details published to potential recipients <br>	
				<input type="submit" value="Register">
			</form> 
	</div>

 
</body>
</html>
