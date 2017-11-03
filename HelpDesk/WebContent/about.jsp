<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us - HelpDesk</title>
<link rel="icon" href="images\icon.png" type="image/png">
<link rel="stylesheet" href="css\w3.css">
<link rel="stylesheet" href="css\font-awesome.min.css">
<style>
p {
	
	font-family: "Segoe UI", Arial, sans-serif;
	font-size: 20px;
	margin-bottom:5%;
	background: rgba(255,255,255,.9);
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<h3>hello</h3>
	<center>
		<h1>About Us</h1>
	</center>
	<div class="w3-row" style="background-image: url('images/50c.jpg');">
		<br>
		<br>
		<div class="w3-card-4" style="width: 70%; background: rgb(255,255,255); opacity: 0.95; margin-left:auto;margin-right:auto;">
			<header class="w3-container w3-blue">
			<h3>Municipal</h3>
			</header>
			<p style=" padding:10px;">In this section, the customers can file their complains and
				provided facilities regarding the essential services to that
				district/area which includes water supply,drainage,market
				places,roads,street lighting,fire brigades and many more.</p>
		</div>
		<div class="w3-card-4" style="width: 70%; background: rgb(255,255,255); opacity: 0.9; margin-left:auto;margin-right:auto;">
			<header class="w3-container w3-blue">
			<h3>Education</h3>
			</header>
			<p style=" padding:10px;">In this section, the customers will be very helpful in getting
				information related to the elementary,secondary,higher secondary and
				higher education issues.Here,it is also provided details of
				educational institutions,scholarships and student loans.Moreover,the
				customers will be guided with information related to foreign
				scholarships,exchange programs and universities etc.</p>
		</div>
		

		<div class="w3-card-4" style="width: 70%; background: rgb(255,255,255); opacity: 0.9; margin-left:auto;margin-right:auto;">
			<header class="w3-container w3-blue">
			<h3>Railways</h3>
			</header>
			<p style=" padding:10px;">Here, the customer's rail transportation issues will be
				handled.The issues may consist of planning of transport service
				problems,safety problems,economy and efficiency.</p>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
