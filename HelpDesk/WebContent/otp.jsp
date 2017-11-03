<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OTP - HelpDesk</title>
<link rel="icon" href="images\icon.png" type="image/png">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<script>
	<%
	try{
		String ms=request.getParameter("msg");
		if(ms.equals("nomatch")){%>
			alert("Incorrect OTP! Please enter correct otp");	
			window.location.href="otp.jsp";
		<%}
	}
	catch(Exception e){
		e.printStackTrace();		
	}
%>
</script>
<h3>Hello</h3>

	<div class="w3-container" style="padding: 0.01em 0px;">
		<div class="w3-row">
			<center>
				<h1>Enter OTP</h1>
			</center>

			<div class="w3-row" style="background-image: url('images/50c.jpg');">
				<div id="PersonalDetails" class="w3-border ar-detail mainform">

					<form class="formmain" action="OtpServlet" method="post">
						<div class="w3-col" style="width: 200px">Enter OTP :</div>
						<div class="w3-rest" >
							<input type="number" min="0000" max="99999" name="otp" placeholder="Enter otp" style="width: 200px" required>
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