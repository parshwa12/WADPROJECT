<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details - HelpDesk</title>
<link rel="icon" href="images\icon.png" type="image/png">
</head>
<body>
<jsp:include page="header1.jsp"></jsp:include>
<h3>Hello</h3><br>
<center>
<div class="w3-card-4" style="width:90%">
<center>
<table>

<tr>
<td colspan="70">Username:</td>
<td>Date:</td>
</tr>

<tr>
<td colspan="70">Domain:</td>
<td>Sub-Domain:</td>
</tr>

<tr>
<td>Complaint:</td>
</tr>

<tr>
<td>Current Status:</td>
</tr>
</table>

<tr>
<td><input type="submit" value="Update" class="primarybtn"></input></td>
</tr>
</center>
</div>
<br>
</center>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>