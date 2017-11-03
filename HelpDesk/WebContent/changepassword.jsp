<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password - HelpDesk</title>
<link rel="icon" href="images\icon.png" type="image/png">
</head>
<body>
<script>
	<%
	try{
		String ms=request.getParameter("msg");
		if(ms.equals("empty")){%>
			alert("Please enter password to change!");	
			window.location.href="changepassword.jsp";
		<%}
		else if(ms.equals("oldinvalid")){%>
			alert("Incorrect password! Please enter your old password correctly");
			window.location.href="changepassword.jsp";
		<%}
		else if(ms.equals("nomatch")){%>
			alert("password and confirm password do not match! Please enter passwords correctly");
			window.location.href="changepassword.jsp";
		<%}
		else if(ms.equals("err")){%>
			alert("Error changing password! try again later");
			window.location.href="changepassword.jsp";
		<%}
		else if(ms.equals("success")){%>
			alert("Password changed successfully! Please Login again");
			window.location.href="LogoutServlet";
		<%	//response.sendRedirect("LogoutServlet");
		}
	}
	catch(Exception e){
		e.printStackTrace();		
	}
	%>
</script>
<jsp:include page="header.jsp"></jsp:include>

<h3>Hello</h3>

	<div class="w3-container" style="padding: 0.01em 0px;">
		<!-- <div class="w3-row"
			style="background-image: url('images/50c.jpg');"> -->
		<div class="w3-row">
			<center>
				<h1>Change Password</h1>
			</center>

			<div class="w3-row" style="background-image: url('images/50c.jpg');">
				<div id="PersonalDetails" class="w3-border ar-detail mainform">

					<form class="formmain" action="ChangePasswordServlet" method="post">
						<div class="w3-col" style="width: 200px">Old Password :</div>
						<div class="w3-rest">
							<input type="password" name="oldpass" placeholder="Enter old password" required>
						</div>
						<br>

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
						
						<br> <center><input type="submit" value="Submit" class="primarybtn"></input></center>
					</form>
				</div>
			</div>

		</div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>