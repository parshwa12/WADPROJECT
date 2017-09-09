<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration - HelpDesk</title>
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
	<h3>Hello</h3>

	<div class="w3-container" style="padding: 0.01em 0px;">
		<!-- <div class="w3-row"
			style="background-image: url('images/50c.jpg');"> -->
		<div class="w3-row">
			<center>
				<h1>Registration Details</h1>
			</center>

			<div class="w3-row" style="background-image: url('images/50c.jpg');">
				<div id="PersonalDetails" class="w3-border ar-detail mainform">

					<form class="formmain" name="reg" method="post" onsubmit="return validateForm()">
						<div class="w3-col" style="width: 200px">AadharCard Number :</div>
						<div class="w3-rest">
							<input type="text" name="anumber" placeholder="Enter AadharCard Number" required>
						</div>
						<br>

						<div class="w3-col" style="width: 200px">First Name :</div>
						<div class="w3-rest">
							<input type="text" name="fname" placeholder="Enter First Name" required>
						</div>
						<br>

						<div class="w3-col" style="width: 200px">Last Name :</div>
						<div class="w3-rest">
							<input type="text" name="lname" placeholder="Enter Last Name" required>
						</div>
						<br>

						<div class="w3-col" style="width: 200px">Email Id :</div>
						<div class="w3-rest">
							<input type="text" name="email" placeholder="Enter Email Id" required>
						</div>
						<br>

						<div class="w3-col" style="width: 200px">Password :</div>
						<div class="w3-rest">
							<input type="password" name="password" placeholder="Enter Password" required>
						</div>
						<br>

						<div class="w3-col" style="width: 200px">Date of Birth :</div>
						<div class="w3-rest">
							<input type="date" name="dob" required>
						</div>
						<br>

						<div class="w3-col" style="width: 200px">Upload AdharCard
							Photo :</div>
						<div class="w3-rest">
							<input type="file" name="photo">
						</div>
						<br>
						
						<div class="w3-col" style="width: 200px">Captcha :</div>
						<div class="w3-rest">
							<img src="http://localhost:8080/HelpDesk/captcha.jsp"/>
							<a href="register.jsp">New captcha</a>
						</div>
						<br>
						
						<div class="w3-col" style="width: 200px">Enter Captcha:</div>
						<div class="w3-rest">
							<input type="text" name="code" placeholder="Enter Captcha" required>
						</div>
						<br>
						
						<center><input type="submit" value="REGISTER" class="primarybtn"></input></center>
					</form>
				</div>
			</div>

		</div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
