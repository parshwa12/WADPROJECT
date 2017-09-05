<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About US</title>
<link rel="icon" href="images\icon.png" type="image/png">
<link rel="stylesheet" href="css\w3.css">
<link rel="stylesheet" href="css\font-awesome.min.css">
<style>
table, th, td {
    border: 1px solid black;
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


<h3>hello</h3>
<h1>About Us</h1>
<!-- <h1>How to use WebSite</h1> -->

<table style="width:100%">
  <tr>
    <th>Municipal </th>
    <th>Education</th> 
    <th>Railways</th>
  </tr>
  <tr>
    <td>Information</td> 
    <td>Information</td>
    <td>Information</td>
  </tr>
</table>
<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>