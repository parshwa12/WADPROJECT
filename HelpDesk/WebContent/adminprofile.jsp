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
<title>Administrator Home - HelpDesk</title>
<link rel="icon" href="images\icon.png" type="image/png">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h3>Hello</h3>
<div class="w3-container" style="padding: 0.01em 0px;">
		<div class="w3-row">
			<center>
				<h1>All Complaints</h1>
			</center>
			<div class="w3-row" style="background-image: url('images/50c.jpg');">
			<br>
	<%
	try{
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con = DriverManager.getConnection("jdbc:db2://localhost:50000/hd_db","nilakshi","Nilakshi_97");
		PreparedStatement ps = con.prepareStatement("select * from complaint_master");
		ResultSet rs = ps.executeQuery();
		while(rs.next()){%>
		
		<div class="w3-row w3-padding-medium w3-card-4 w3-margin" style="background-color:white">
		<form action="adminupdatecomplaint.jsp" method="post">
		<div class="w3-col" style="width:200px">
			<b>Email-id:</b>
		</div>
		<div class="w3-rest">
			<%=rs.getString("useremail") %>
		</div>
		<div class="w3-col" style="width:200px">
			<b>Date Posted:</b>
		</div>
		<div class="w3-rest">
			<%=rs.getString("dateposted") %>
		</div>
		<div class="w3-col" style="width:200px">
			<b>Domain:</b>
		</div>
		<div class="w3-rest">
			<%=rs.getString("domain") %>
		</div>
		
		<div class="w3-col" style="width:200px">
			<b>Complaint:</b>
		</div>
		<div class="w3-rest">
			<%=rs.getString("complaint") %>
		</div>
		
		<div class="w3-col" style="width:200px">
			<b>Status:</b>
		</div>
		<div class="w3-rest">
			<%=rs.getString("status") %>
		</div>
		<%if(!rs.getString("status").equals("analysing")){%>
		<div class="w3-col" style="width:200px">
			<b>complaint status description:</b>
		</div>
		<div class="w3-rest">
			<%=rs.getString("description") %>
		</div>
		<br>
		<%}%>
		<div class="w3-col" style="width:200px">
			<input type="submit" value="Update" class="primarybtn">
		</div>
		<input type="hidden" value=<%=rs.getInt("complaintid")%> name="id">
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