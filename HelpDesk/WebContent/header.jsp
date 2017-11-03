<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="images\icon.png" type="image/png">
<link rel="stylesheet" href="css\w3.css">
<link rel="stylesheet" href="css\style.css">
<link rel="stylesheet" href="css\font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title></title>
<style>
input {
	opacity: 0.85;
}

.w3-modal button {
	opacity: 0.8;
}

.themecolor, .themecolor-hover:hover {
	color: #f44336 !important
}

.greyscle {
	-webkit-filter: brightness(60%);
	filter: brightness(60%)
}
</style>
</head>
<body>
	<div class="w3-container w3-white w3-top w3-cell-row w3-border"
		style="padding: 0px 0px; height: 60px; z-index: 2">
		<a 
		<%
		if(session.getAttribute("email")!=null)
			{
		%>
		href="profile.jsp"
		<%
			}
		else{%>
			href="about.jsp"				
		<%
		}		
		%>
		 class="w3-cell"
			style="width: 5%; font-weight: 900; font-size: 1.5em"> <span
			class="w3-text-white w3-padding-16 w3-left w3-margin-left w3-top w3-padding-3"
			style="width: 5%"> <img alt="images" src="images/logo.png" height="40px" width="200px"> </span></a>
		<div class=" w3-large w3-cell">
		
			<ul class="w3-navbar w3-right">
			<%
			if(session.getAttribute("email")!=null)
			{
			%>
				<li><a
					class="w3-text-black w3-hover-text-white w3-hover-lime w3-padding-16 w3-white"
					href="newcomplaint.jsp">New Complaint</a></li>
				<li><a
					class="w3-text-black w3-hover-text-white w3-hover-lime w3-padding-16 w3-white"
					href="previouscomplaint.jsp">Previous Complaints</a></li>
				<li><a
					class="w3-text-black w3-hover-text-white w3-hover-lime w3-padding-16 w3-white"
					href="changepassword.jsp">Change Password</a></li>
				<li><a
					class="w3-text-black w3-hover-text-white w3-hover-lime w3-padding-16 w3-white"
					href="LogoutServlet">Logout</a></li>				
			<%}
			else if(session.getAttribute("adminemail")!=null){		
			%>	
				<li><a
					class="w3-text-black w3-hover-text-white w3-hover-lime w3-padding-16 w3-white"
					href="adminprofile.jsp">All Complaints</a></li>
				<li><a
					class="w3-text-black w3-hover-text-white w3-hover-lime w3-padding-16 w3-white"
					href="adminallusers.jsp">All Users</a></li>
				<li><a
					class="w3-text-black w3-hover-text-white w3-hover-lime w3-padding-16 w3-white"
					href="adminaddadmin.jsp">Add Administrator</a></li>
				<li><a
					class="w3-text-black w3-hover-text-white w3-hover-lime w3-padding-16 w3-white"
					href="LogoutServlet">Logout</a></li>
			<%}
			else{		
			%>	
				<li><a
					class="w3-text-black w3-hover-text-white w3-hover-lime w3-padding-16 w3-white"
					href="about.jsp">About</a></li>
				<li><a
					class="w3-text-black w3-hover-text-white w3-hover-lime w3-padding-16 w3-white"
					href="login.jsp">Login</a></li>
				<li><a
					class="w3-text-black w3-hover-text-white w3-hover-lime w3-padding-16 w3-white"
					href="register.jsp">Registration</a></li>
				<li><a
					class="w3-text-black w3-hover-text-white w3-hover-lime w3-padding-16 w3-white"
					href="contactus.jsp">Contact Us</a></li>
			<%}%>	
			</ul>
		</div>
	</div> 
</body>
</html>
