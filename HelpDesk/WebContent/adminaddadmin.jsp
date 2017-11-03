<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Administrator - HelpDesk</title>
<script type="text/javascript" src="js/validate.js"></script>
<link rel="icon" href="images\icon.png" type="image/png">
</head>
<style>
.sidebar-hover:hover {
	background-color: #ccc
}
</style>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<script>
	<%
	try{
		String ms=request.getParameter("msg");
		if(ms.equals("addsucc")){%>
			alert("New Administrator Added Successfully!");	
			window.location.href="adminaddadmin.jsp";
		<%}
		if(ms.equals("addfail")){%>
		alert("Error adding new Administrator! Try again later");	
		window.location.href="adminaddadmin.jsp";
	<%}
	}
	catch(Exception e){
		e.printStackTrace();		
	}
%>
</script>
	<h3>Hello</h3>

	<div class="w3-container" style="padding: 0.01em 0px;">
		<!-- <div class="w3-row"
			style="background-image: url('images/50c.jpg');"> -->
		<div class="w3-row">
			<center>
				<h1>Add Administrator</h1>
			</center>

			<div class="w3-row" style="background-image: url('images/50c.jpg');">
				<div id="PersonalDetails" class="w3-border ar-detail mainform">

					<form class="formmain" action="AddAdminServlet" name="reg" method="post">
						<div class="w3-col" style="width: 200px">Email Id :</div>
						<div class="w3-rest">
							<input type="text" name="email" placeholder="Enter Email Id" required>
						</div>
						<br>

						<div class="w3-col" style="width: 200px">Set Password :</div>
						<div class="w3-rest">
							<input type="password" name="password" placeholder="Enter Password" required>
						</div>
						<br>
						
						<div class="w3-col" style="width: 200px">Confirm Password :</div>
						<div class="w3-rest">
							<input type="password" name="confirmpassword" placeholder="Confirm Password" required>
						</div>
						<br>

						<center><input type="submit" value="Add" class="primarybtn"></input></center>
					</form>
				</div>
			</div>

		</div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
