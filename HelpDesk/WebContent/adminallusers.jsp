<%@page import="java.io.File"%>
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
<title>All Users - HelpDesk</title>
<link rel="icon" href="images\icon.png" type="image/png">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<script>
	<%
	try{
		String ms=request.getParameter("msg");
		if(ms.equals("deletesucc")){%>
			alert("User Deleted successfully");	
			window.location.href="adminallusers.jsp";
		<%}
		if(ms.equals("deletefail")){%>
		alert("Error deleting user! try again later");	
		window.location.href="adminallusers.jsp";
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
				<h1>All Users</h1>
			</center>
			<div class="w3-row" style="background-image: url('images/50c.jpg');">
			<br>
	<%
	try{
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con = DriverManager.getConnection("jdbc:db2://localhost:50000/hd_db","nilakshi","Nilakshi_97");
		PreparedStatement ps = con.prepareStatement("select * from user_master");
		ResultSet rs = ps.executeQuery();
		while(rs.next()){%>
		
		<div class="w3-row w3-padding-medium w3-card-4 w3-margin" style="background-color:white">
		<form action="DeleteUserServlet" method="post">
		<div class="w3-col" style="width:200px">
			<b>Email-Id:</b>
		</div>
		<div class="w3-rest">
			<%=rs.getString("emailid") %>
		</div>
		
		<div class="w3-col" style="width:200px">
			<b>Aadhar Card Number:</b>
		</div>
		<div class="w3-rest">
			<%=rs.getString("aadharno") %>
		</div>
		<div class="w3-col" style="width:200px">
			<b>First Name:</b>
		</div>
		<div class="w3-rest">
			<%=rs.getString("fname") %>
		</div>
		<div class="w3-col" style="width:200px">
			<b>Last Name:</b>
		</div>
		<div class="w3-rest">
			<%=rs.getString("lname") %>
		</div>
				
		<div class="w3-col" style="width:200px">
			<b>Date Of Birth:</b>
		</div>
		<div class="w3-rest">
			<%=rs.getString("dob") %>
		</div>
		
		<div class="w3-col" style="width:200px">
			<b>Aadhar Card Image:</b>
		</div>
		<div class="w3-rest">
			<%	String email = rs.getString("emailid");		
				String path = application.getRealPath("");
				path = path+"images\\";
				path = path+email+".jpg";
				File f = new File(path);
				String src = "";
				if(f.exists()){
					src = f.getName();
				}
				else{
					src="default.jpg";
				}
			%>
			<img src = "images/<%=src %>" style="width:250px; height:120px; margin:10px">
		</div>
		<input type="hidden" value=<%=rs.getString("emailid")%> name="emailid">
		<div class="w3-col" style="width:200px">
			<input type="submit" name="actionbutton" value="Delete" class="primarybtn" onClick="if (confirm('Are you sure you want to delete this user?') != true) {event.preventDefault();}">
		</div>
		<div class="w3-rest">
			<input type="submit" value="Edit" class="primarybtn" name="actionbutton">
		</div>
		
		</form>
	</div>
<%		}
	}	
	catch(Exception e){
		e.printStackTrace();
	}

%>
</div>
			</div>

		</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>