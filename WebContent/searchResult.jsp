<%@page import="bloodBank.pojo.User" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<title> home </title>
<link rel="stylesheet"  type="text/css" href="css/style.css">
<link rel="stylesheet"  type="text/css" href="css/form.css">
</head>
<body style="overflow:scroll;">

	<div class="bgimage3">
		<div class="menu">
	      	<div class="leftmenu">
	          	<img src="images/logo3.png" style="width:35%; height:35%;margin-top:5%; margin-left:10%;">
	      	</div>
	      	
	      	
	      	<% 
	      		User user = (User)session.getAttribute("user"); 
	      		if(user!=null){
	      			String gender=user.getGender();
	      			if(gender.equalsIgnoreCase("male")){
	      				gender="Mr.";
	      			}else if(gender.equalsIgnoreCase("female")){
	      				gender="Mrs.";
	      			}else{
	      				gender="";
	      			}
	      	%>
	    
	      	<div class="rightmenu">
	      		<div style="float:left;width:40%;">
	      			<h2>Welcome <%=gender%> <%=user.getName().toUpperCase() %></h2>
	      		</div>
	      		<div class="navigation2">
	      			<ul>
	      				<li><a href="LogoutServlet">logout</a></li>
	      				<li><a href="editProfile.jsp">edit profile</a></li>	
	      			</ul>
	      		</div>
	      	</div>
	      	
	      	<%}else{%>
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
	      	
	      	<%} %>
	      	
	 	</div>
	 	<div class="navigation">
	 		<div style="margin-left:28%;">
	 			<ul>
	 				<%if(user==null){ %>
	 					<li><a href="home.jsp">Home</a></li>
	 				<%}else{%>
	 					<li><a href="userHome.jsp">Home</a></li>
	 				<%} %>
  					
  					<li><a href="bloodTips.jsp">Blood Tips</a></li>
  					<li><a href="feedback.jsp">Feedback</a></li>
  					<li><a href="#contact">Payment</a></li>
  					<li><a href="aboutus.jsp">About Us</a></li>
  					<li><a href="contactus.jsp">Contact Us</a></li>
				</ul>
	 		</div>	
		</div>
		
		<%
			ArrayList<User> list = (ArrayList<User>)request.getAttribute("userList");
		%>
		
		<div class="searchResult">
			<h1 style="text-align:center;">Search Result</h1><hr>
			<%if(list.isEmpty()){ %>
				<br>
				<p style="text-align:center;">No record found</p>
			<%} %>
			<table id="searchTable">
				<tr>
					<th> </th>
				</tr>
				
				<%
					for(int i=0;i<list.size();i++){
						User listUser=(User)list.get(i);
					
				%>
					<tr>
						<td>
							<div class="column">
								<h1><%=listUser.getName() %> ( <%=listUser.getBlood_group() %> )</h1> 
								<p ><%=listUser.getAddress() %>, <%=listUser.getCity() %></p>
								<form action="emailSearchSend.jsp" method="post" >
									<input type="hidden" name="email_id" value="<%=listUser.getEmail_id()%>">
									<input	style="background-color:#a71414;color:white;" type="submit" name="sendEmail" value="Email">
								</form>
								<form action="new.jsp" method="post">
									<input type="hidden" name="sname" value="<%=listUser.getName()%>">
									<input type="hidden" name="semail" value="<%=listUser.getEmail_id()%>">
									<input type="hidden" name="smobile" value="<%=listUser.getMobile_number()%>">
									<input type="hidden" name="saddress" value="<%=listUser.getAddress()%>">
									<input type="hidden" name="scity" value="<%=listUser.getCity()%>">
									
									
									<input style="float:right;width:40%; background-color:#a71414;color:white;" type="submit" value="Get contact details">
								</form>
								
								
							</div>
						</td>
					</tr>
				<%} %>
			</table>
		</div>		 	
	</div>

</body>
</html>
