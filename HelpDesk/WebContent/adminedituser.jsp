<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit User - HelpDesk</title>
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
		String email=request.getParameter("emailid");
		if(ms.equals("editsucc")){%>
			alert("User details edited successfully");	
			window.location.href="adminedituser.jsp?emailid="+email;
		<%}
		if(ms.equals("editfail")){%>
		alert("Error editing user details! try again later");	
		window.location.href="adminedituser.jsp?emailid="+email;
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
				<h1>Edit User</h1>
			</center>
<%
	try{
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con = DriverManager.getConnection("jdbc:db2://localhost:50000/hd_db","nilakshi","Nilakshi_97");
		String sql="select * from user_master where emailid='"+request.getParameter("emailid")+"'";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		rs.next();
		%>
			<div class="w3-row" style="background-image: url('images/50c.jpg');">
				<div id="PersonalDetails" class="w3-border ar-detail mainform">

					<form class="formmain" action="UpdateUserServlet" name="reg" method="post" onsubmit="return validateForm()">
						
						<div class="w3-col" style="width: 200px">First Name :</div>
						<div class="w3-rest">
							<input type="text" name="fname" value="<%=rs.getString("fname") %>" required>
						</div>
						<br>

						<div class="w3-col" style="width: 200px">Last Name :</div>
						<div class="w3-rest">
							<input type="text" name="lname" value="<%=rs.getString("lname") %>" placeholder="Enter Last Name" required>
						</div>
						<br>

						<div class="w3-col" style="width: 200px">Date of Birth :</div>
						<div class="w3-rest">
							<input type="date" name="dob" required value="<%=rs.getString("dob") %>">
						</div>
						<br>
						<input type="hidden" value=<%=rs.getString("emailid")%> name="emailid">
						<center><input type="submit" value="Edit" class="primarybtn"></input></center>
					</form>
				</div>
			</div>

		</div>
	</div>
<%}	
	catch(Exception e){
		e.printStackTrace();
	}

%>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
