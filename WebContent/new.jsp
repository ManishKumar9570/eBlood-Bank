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
		
	<%
		String name=request.getParameter("sname");
		String mobile=request.getParameter("smobile");
		String email=request.getParameter("semail");
		String address=request.getParameter("saddress");
		String city=request.getParameter("scity");
	%>
	
	<fieldset style="margin:250px 0px 0px 500px;width:450px;color:#b21212">
			<legend style="font-size:30px;">Donor Contact Details</legend>
		
		<table style="color:black;font-size:30px;width:800px;">
							<tr>
								<td>Name      :</td>
								<td><%=name %></td>
						
							</tr>
							
							<tr>
								<td>Mobile NO. :</td>
								<td><%=mobile %></td>
						
							</tr>
							<tr>
								<td>Email id   :</td>
								<td><%=email %></td>
						
							</tr>
							<tr>
								<td>Address    :</td>
								<td><%=address %></td>
						
							</tr>
							<tr>
								<td>City       :</td>
								<td><%=city %></td>
						
							</tr>
		</table>
		</fieldset>
			 	
	</div>
	
	
</body>
</html>
