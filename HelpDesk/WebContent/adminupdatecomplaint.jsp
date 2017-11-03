<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Complaint - HelpDesk</title>
<link rel="icon" href="images\icon.png" type="image/png">
</head>
<body>
<script>
	<%
	try{
		String ms=request.getParameter("msg");
		if(ms.equals("success")){%>
			alert("Complaint updated successfully!");	
			window.location.href="adminprofile.jsp";
		<%}
		if(ms.equals("err")){%>
		alert("Error updating complaint! Try again later!");	
		window.location.href="admiprofile.jsp";
	<%}
	}
	catch(Exception e){
		e.printStackTrace();		
	}
%>
</script>
<jsp:include page="header.jsp"></jsp:include>
<h3>Hello</h3>

	<div class="w3-container" style="padding: 0.01em 0px;">
		<div class="w3-row">
			<center>
				<h1>Update Complaint</h1>
			</center>

			<div class="w3-row" style="background-image: url('images/50c.jpg');">
				<div id="PersonalDetails" class="w3-border ar-detail mainform">

					<form class="formmain" action="UpdateComplaintServlet" method="post">
						<div class="w3-col" style="width: 200px">Status:</div>
						<div class="w3-rest">
							<select name="status" required>
								<option value="discarded">Discarded</option>
								<option value="suggested">Suggested</option>
								<option value="action taken">Action Taken</option>
							</select>
						</div>
						<br>

						<div class="w3-col" style="width: 200px">Complaint Status Description :</div>
						<div class="w3-rest">
							<textarea rows="5" cols="20" name="description" required></textarea>
						</div>
						<br>
						<input type="hidden" name="id" value=<%=request.getParameter("id") %>>
						<br> <center><input type="submit" value="Update Complaint" class="primarybtn" style="width:200px"></input></center>
					</form>
				</div>
			</div>

		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>