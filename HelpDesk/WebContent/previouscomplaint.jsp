<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Previous Complaints - HelpDesk</title>
<link rel="icon" href="images\icon.png" type="image/png">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h3>Hello</h3>

	<div class="w3-container" style="padding: 0.01em 0px;">
		<div class="w3-row">
			<center>
				<h1>Previous Complaints</h1>
			</center>

			<div class="w3-row" style="background-image: url('images/50c.jpg');">
				<div class="mymain w3-padding" >
	<%
	String email = (String)session.getAttribute("email"); 
	try{
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con = DriverManager.getConnection("jdbc:db2://localhost:50000/hd_db","nilakshi","Nilakshi_97");
		PreparedStatement ps = con.prepareStatement("select * from complaint_master where useremail='"+email+"'");
		ResultSet rs = ps.executeQuery();
		while(rs.next()){%>
		<hr>
		<div class="w3-row w3-padding-medium w3-card-4" style="background-color:white">
		<div class="w3-col" style="width:200px">
			Domain
		</div>
		<div class="w3-rest">
			<%=rs.getString("domain") %>
		</div>
		<br>
		<div class="w3-col" style="width:200px">
			description
		</div>
		<div class="w3-rest">
			<%=rs.getString("complaint") %>
		</div>
		<br>
		<div class="w3-col" style="width:200px">
			status
		</div>
		<div class="w3-rest">
			<%=rs.getString("status") %>
		</div>
		<br>
		<%if(!rs.getString("status").equals("analysing")){%>
		<div class="w3-col" style="width:200px">
			complaint status description
		</div>
		<div class="w3-rest">
			<%=rs.getString("description") %>
		</div>
		<br>	
		<%}%>
		<div class="w3-col" style="width:200px">
			date posted
		</div>
		<div class="w3-rest">
			<%=rs.getString("dateposted") %>
		</div>
		
		<br>
	</div>
	<hr>
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