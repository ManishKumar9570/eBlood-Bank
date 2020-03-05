<%@page import="bloodBank.pojo.User" %>
<!DOCTYPE html>
<html>
<head>
<title> home </title>
<link rel="stylesheet"  type="text/css" href="css/style.css">
<link rel="stylesheet"  type="text/css" href="css/form2.css">

</head>
<body>
	<%	
		User user=(User)session.getAttribute("user");
		if(user==null){
			
		}else{
	%>
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
		
			<form action="EditProfileServlet" method="post">
				<div class="form1">	
					<fieldset style="padding:15px;color:#b21212;">
					
						<legend>Login Details</legend>
						
						<p style="color:black">Email id :</p>
						<input type="text" name="email_id" value="<%=user.getEmail_id()%>" readonly>
							
						<p style="color:black">Password :</p>
						<input type="password" id="password" name="password" required>
						
					</fieldset>
				</div>
				<div class="form1">		
					<fieldset style="padding:15px;color:#b21212;">
					
						<legend>Donor's Information </legend>
						
						<p style="color:black">Name :</p>
						<input type="text" name="name" value="<%=user.getName() %>" required>
						
						<p style="color:black">Age :</p>
						<input type="number" name="age"  value="<%=user.getAge() %>" required>
						
						<p style="color:black">Gender :</p>
						<input type="text" list="gender" value="<%=user.getGender() %>" name="gender" required>
						<datalist id="gender">
							<option value="Male">
							<option value="Female">
							<option value="Other">
						</datalist>
						
						
						<p style="color:black">Blood Group :</p>
						<input type="text" list="blood" value="<%=user.getBlood_group() %>" name="blood_group" required>
						<datalist id="blood">
							<option value="A+">
							<option value="A-">
							<option value="B+">
							<option value="B-">
							<option value="O+">
							<option value="O-">
							<option value="AB+">
							<option value="AB-">
						</datalist>
												
						<p style="color:black">Weight :</p>
						<input type="number"  step="0.01" name="weight" value="<%=user.getWeight() %>" required>
						
					</fieldset>	
				</div>	
				
				<div class="form1">
					<fieldset style="padding:15px;color:#b21212;">
					
						<legend>Contact Details</legend>
						
						<p style="color:black">Mobile Number :</p>
						<input type="text" name="mobile_number" value="<%=user.getMobile_number() %>" required>
						
						<p style="color:black">City :</p>
						<input type="text" list="city" value="<%=user.getCity() %>" name="city" required>
						<datalist id="city">
						  <option value="Delhi">Delhi</option>
						  <option value="Mumbai">Mumbai</option>
						  <option value="Banglore">Banglore</option>
						  <option value="Kolkata">Kolkata</option>
						  <option value="Hyderabad">Hyderabad</option>
						  <option value="Chennai">Chennai</option>
						  <option value="Raipur">Raipur</option>
						  <option value="Patna">Patna</option>
						</datalist>
						
						<p style="color:black">Address :</p>
						<textarea rows="2" cols="5" name="address" required><%=user.getAddress() %></textarea>
						
					</fieldset>
				</div>
				<input type="checkbox" name="terms&condns" value="true" style="margin-top:5%;" required> I agree to <a href="#">terms and condition</a> and consent to have my donor details published to potential recipients <br>	
				<input type="submit" value="Register">
			</form> 
	</div>

 	<%}%>
</body>
</html>
