<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot Password - HelpDesk </title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<h3>Hello</h3>

	<div class="w3-container" style="padding: 0.01em 0px;">
		<!-- <div class="w3-row"
			style="background-image: url('images/50c.jpg');"> -->
		<div class="w3-row">
			<center>
				<h1>Forgot Password</h1>
			</center>

			<div class="w3-row" style="background-image: url('images/50c.jpg');">
				<div id="PersonalDetails" class="w3-border ar-detail mainform">

					<form name="forgotpass" action="ForgotServlet" method="post" class="formmain">

						<div class="w3-col" style="width: 200px">Email Id :</div>
						<div class="w3-rest">
							<input type="text" name="email" placeholder="Enter Email Id" required>
						</div>
						<br>
						
						<center><input type="submit" value="Get New Password" class="primarybtn" style="width:200px"></input></center>
					</form>
				</div>
			</div>

		</div>
	</div>


<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>