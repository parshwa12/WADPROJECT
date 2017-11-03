<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login - HelpDesk</title>
<link rel="icon" href="images\icon.png" type="image/png">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h3>Hello</h3>

	<div class="w3-container" style="padding: 0.01em 0px;">
		<div class="w3-row">
			<center>
				<h1>Admin Login</h1>
			</center>

			<div class="w3-row" style="background-image: url('images/50c.jpg');">
				<div id="PersonalDetails" class="w3-border ar-detail mainform">

					<form class="formmain" action="AdminLoginServlet" method="post">
						<div class="w3-col" style="width: 200px">Email-id:</div>
						<div class="w3-rest">
							<input type="email" name="emailid" placeholder="Enter Username" required>
						</div>
						<br>

						<div class="w3-col" style="width: 200px">Password :</div>
						<div class="w3-rest">
							<input type="password" name="password" placeholder="Enter Password" required>
						</div>
						<br>
						
						<div class="w3-col" style="width: 200px"> </div>
						<div class="w3-rest">
							<a href="forgot.jsp" style="color:blue;">Forgot Password?</a>
						</div>
						<br>

						<br> <center><input type="submit" value="LOGIN" class="primarybtn"></input></center>
					</form>
				</div>
			</div>

		</div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>