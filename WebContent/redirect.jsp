<!DOCTYPE html>
<html>
<head>
<title> home </title>
<link rel="stylesheet"  type="text/css" href="css/style.css">
<link rel="stylesheet"  type="text/css" href="css/form.css">
</head>
<body>
		<%	
			String msg1=(String)request.getAttribute("user_already_exists");
			String msg2=(String)request.getAttribute("registered_successfully");
			String msg3=(String)request.getAttribute("details_updated_successfully");
			String msg4=(String)request.getAttribute("login_successful");
			String msg5=(String)request.getAttribute("submitted");
		%>
	<div class="bgimage3">
		<div class="menu">
	      	<div class="rightmenu">
	          	<img src="images/logo3.png" style="width:15%; height:15%;margin-top:1%; margin-left:25%;">
	      	</div>
	 	</div> 
	 	<div style="float:left;margin-left:18%;margin-top:5%;width:70%;background-color:#d6c7c7;text-align:center;">
			
			<%	
				if(msg1!=null && msg1.equalsIgnoreCase("yes")){
					response.setHeader("refresh","5;home.jsp");
			%> 
			
					
					<h1>User already registered. Please Login</h1>
					<br>
					<h3>you will be redirected to login/home page in 5 seconds.</h3>
					<h3>If not ? <a href="home.jsp">click here</a></h3>
			
			<%}%>
			
			
			<%	
				if(msg2!=null && msg2.equalsIgnoreCase("yes")){ 
					response.setHeader("refresh","5;home.jsp");
			%>
				
			
					
					<h1>You are successfully registered. Please Login</h1>
					<br>
					<h3>you will be redirected to login/home page in 5 seconds.</h3>
					<h3>If not ? <a href="home.jsp">click here</a></h3>
			
			<%}%>
			
			
			<%	
				if(msg3!=null && msg3.equalsIgnoreCase("yes")){
					response.setHeader("refresh","5;userHome.jsp");
			%> 
			
					
					<h1>Details updated successfully</h1>
					<br>
					<h3>you will be redirected to home page in 5 seconds.</h3>
					<h3>If not ? <a href="userHome.jsp">click here</a></h3>
			
			<%}%>
			
			
			<%	
				if(msg4!=null && msg4.equalsIgnoreCase("no")){
					response.setHeader("refresh","5;home.jsp");
			%> 
			
					
					<h1>Invalid login credentials</h1>
					<br>
					<h3>you will be redirected to login/home page in 5 seconds.</h3>
					<h3>If not ? <a href="home.jsp">click here</a></h3>
			
			<%}%>
			
			<%	
				if(msg5!=null && msg5.equalsIgnoreCase("yes")){ 
					response.setHeader("refresh","5;home.jsp");
			%>
				
			
					
					<h1>You are successfully Submitted your Feedback/Suggestion.</h1>
					<br>
					<h3>you will be redirected to login/home page in 5 seconds.</h3>
					<h3>If not ? <a href="home.jsp">click here</a></h3>
			
			<%}else{%>
				<h1>Your Feedback/Suggestion is not Submitted successfully.</h1>
					<br>
					<h3>you will be redirected to login/home page in 5 seconds.</h3>
					<h3>If not ? <a href="home.jsp">click here</a></h3>
			
			<%}%>>
		</div>	
	</div>
	
</body>
</html>
