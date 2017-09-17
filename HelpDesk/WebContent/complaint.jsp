<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Complaint - HelpDesk</title>
<link rel="icon" href="images\icon.png" type="image/png">

<style>
table, th, td {
    /*border: 1px solid black;*/
    border-collapse: collapse;
}
th, td {
    padding: 5px;
}
th, td {
    text-align: center;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h1>Hello</h1>
<center>
<div class="w3-card-4" style="width:90%">
<table style="width:100%">
<tr><td>
Category:
<select name="category">
<option value="default">Select Category</option>
<option value="M">Municipal Corporation</option>
<option value="E">Education</option>
<option value="R">Railways</option>
</select>
</td>
</tr>

<tr>
<td>
Description:<textarea rows="5" cols="20"></textarea>
</td>
</tr>

<tr>
<td>
<center><input type="submit" value="SUBMIT" class="primarybtn"></input></center>
</td>
</tr>
</table>
</div>
<br>
</center>
<jsp:include page="footer.jsp"></jsp:include>




</body>
</html>