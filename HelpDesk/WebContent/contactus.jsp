<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us - HelpDesk</title>
<link rel="icon" href="images\icon.png" type="image/png">
</head>
<body>
<script>
	<%
	try{
		String ms=request.getParameter("msg");
		if(ms.equals("succ")){%>
			alert("Feedback Submitted Successfully!");	
			window.location.href="contactus.jsp";
		<%}
		else if(ms.equals("fail")){%>
		alert("Error submitting Feedback! Try again later");	
		window.location.href="contactus.jsp";
	<%}
	}
	catch(Exception e){
		e.printStackTrace();		
	}
%>
</script>
<jsp:include page="header.jsp"></jsp:include>
<h3> Hello </h3>
	<center>
		<h1>Contact Us</h1>
	</center>
	<div class="w3-row" style="background-image: url('images/50c.jpg');">
		<br><br>
		<div class="w3-card-4" style="background:white;padding:10px;margin:20px;">
			<h3>Contact Information</h3>
			<hr>
			Email - id: admin@gmail.com
			<br>
			Phone numbers: 1xx-xxx-x2, 1xx-xxx-xx3 
		</div>
		<div class="w3-card-4" style="background:white;padding:10px;margin:20px;">
			<h3>Feedback Form</h3>
			<hr>
			<form class="formmain" action="FeedbackServlet" method="post">
				<div class="w3-col" style="width: 200px">Email-id :</div>
				<div class="w3-rest">
					<input type="email" name="emailid" placeholder="Enter your email-id" required>
				</div>
				<br>
				<div class="w3-col" style="width: 200px">Subject :</div>
				<div class="w3-rest">
					<input type="text" name="subject" placeholder="Enter feedback subject" required>
				</div>
				<br>
				<div class="w3-col" style="width: 200px" >Feedback(max 500 characters): </div>
				<div class="w3-rest">
					<textarea cols=50 rows=10 maxlength="500" name="feedback" placeholder="Enter feedback description" required></textarea>
				</div>
				<br>
				<br><input type="submit" value="Give Feedback" class="primarybtn"></input>
			</form> 
		</div>
	
		
	</div>

<jsp:include page="footer.jsp"></jsp:include>




</body>
</html>