<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reset Password - HelpDesk</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<script>
	<%
	try{
		String ms=request.getParameter("msg");
		if(ms.equals("nomatch")){%>
			alert("Passwords do not match! Check your details and try again");	
			window.location.href="login.jsp";
	<%}}
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
				<h1>Reset Password</h1>
			</center>

			<div class="w3-row" style="background-image: url('images/50c.jpg');">
				<div id="PersonalDetails" class="w3-border ar-detail mainform">

					<form class="formmain" action="ResetServlet" method="post">
						<div class="w3-col" style="width: 200px">Password :</div>
						<div class="w3-rest">
							<input type="password" name="newpass" placeholder="Enter new password" required>
						</div>
						<br>
						
						<div class="w3-col" style="width: 200px">Confirm Password :</div>
						<div class="w3-rest">
							<input type="password" name="conpass" placeholder="Re-enter new password" required>
						</div>
						<br>
						
						<br> <center><input type="submit" value="Reset Password" class="primarybtn"></input></center>
					</form>
				</div>
			</div>

		</div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>