<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Complaint - HelpDesk</title>
<link rel="icon" href="images\icon.png" type="image/png">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<script>
	<%
	try{
		String ms=request.getParameter("msg");
		if(ms.equals("compsucc")){%>
			alert("Complaint submitted Sucessfully!");	
			window.location.href="newcomplaint.jsp";
		<%}
		if(ms.equals("compfail")){%>
		alert("Error submitting complaint! Try again later");	
		window.location.href="newcomplaint.jsp";
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
				<h1>New Complaint</h1>
			</center>

			<div class="w3-row" style="background-image: url('images/50c.jpg');">
				<div id="PersonalDetails" class="w3-border ar-detail mainform">

					<form class="formmain" action="NewComplaintServlet" method="post">
						<div class="w3-col" style="width: 200px">Domain :</div>
						<div class="w3-rest">
							<select name="domain" required>
								<option value="default">Select Category</option>
								<option value="municipal corporation">Municipal Corporation</option>
								<option value="education">Education</option>
								<option value="railways">Railways</option>
							</select>
						</div>
						<br>

						<div class="w3-col" style="width: 200px">Complaint Description :</div>
						<div class="w3-rest">
							<textarea rows="5" cols="20" name="complaint" required></textarea>
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