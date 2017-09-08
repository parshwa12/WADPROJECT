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
<title>Administrator Home</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<br>
<br>
<br>
<br>
<div class="mymain" style="background-color:yellowgreen">
	<%
	try{
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con = DriverManager.getConnection("jdbc:db2://localhost:50000/mydb","username","password");
		PreparedStatement ps = con.prepareStatement("select * from registertb");
		ResultSet rs = ps.executeQuery();
		while(rs.next()){%>
		<hr>
		<div class="w3-row w3-padding-medium">
		<div class="w3-col" style="width:200px">
			first name
		</div>
		<div class="w3-rest">
			<%=rs.getString("fname") %>
		</div>
		<br>
		<div class="w3-col" style="width:200px">
			last name
		</div>
		<div class="w3-rest" style="width:200px">
			<%=rs.getString("lname") %>
		</div>
		<br>
		<div class="w3-col" style="width:200px">
			email
		</div>
		<div class="w3-rest">
			<%=rs.getString("email") %>
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
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>