<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error</title>
<link rel="icon" href="images/myicon.png">
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%@ include file = "header.jsp" %>
<div class="body"><h1>Error Page</h1></div>
<script>
<%
	try{
		String ms=request.getParameter("msg");
		if(ms.equals("abc")){%>
			alert("All Fields are Mandatory!");	
			window.location.href="login.jsp";
		<%}
		else if(ms.equals("xyz")){%>
			alert("Incorrect email id or password!");
			window.location.href="login.jsp";
		<%}
		else if(ms.equals("updateerror")){%>
			alert("Update failed! Please check your details and try again later");
			window.location.href="changepassword.jsp";
		<%}
		else if(ms.equals("regfail")){%>
			alert("Registration Failed!");
			window.location.href="login.jsp";
		<%}
		else if(ms.equals("loginfail")){%>
			alert("Login failed! Please check your details and try again");
			window.location.href="login.jsp";
		<%}
		else if(ms.equals("resetfail")){%>
			alert("Password Reset failed! Please check your details and try again");
			window.location.href="login.jsp";
		<%}
	}
	catch(Exception e){
		e.printStackTrace();		
	}
%>
</script>
<h1>Error!</h1>
<%@ include file = "footer.jsp" %>
</body>
</html>