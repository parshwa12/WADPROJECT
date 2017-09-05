<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="images\icon.png" type="image/png">
<link rel="stylesheet" href="css\w3.css">
<link rel="stylesheet" href="css\style.css">
<link rel="stylesheet" href="css\font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title></title>
<style>
input {
	opacity: 0.85;
}

.w3-modal button {
	opacity: 0.8;
}

.themecolor, .themecolor-hover:hover {
	color: #f44336 !important
}

.myanimate {
	-webkit-animation: manimate 4s, mopac 0.5s linear 3.5s;
	animation: manimate 4s, mopac 0.5s linear 3.5s;
	-webkit-transition: manimate 4s ease-in-out;
	transition: manimate 4s ease-in-out;
}

@
-webkit-keyframes manimate {
	from {-webkit-transform: scale(2)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes manimate {
	from {transform: scale(2)
}

to {
	transform: scale(1)
}

}
@
-webkit-keyframes mopac {
	from {opacity: 1
}

to {
	opacity: 0.8
}

}
@
keyframes mopac {
	from {opacity: 1
}

to {
	opacity: 0.8
}

}
.mt-animatel {
	-webkit-animation: mtl 1s;
	animation: mtl 1s;
	-webkit-transition: mtl 1s ease-in-out;
	transition: mtl 1s ease-in-out;
	animation-fill-mode: forwards;
	-webkit-animation-fill-mode: both;
}

.mt-animater {
	-webkit-animation: mtr 1s;
	animation: mtr 1s;
	-webkit-transition: mtr 1s ease-in-out;
	transition: mtr 1s ease-in-out;
	animation-fill-mode: forwards;
	-webkit-animation-fill-mode: both;
}

.mt-visible {
	-webkit-animation: mtvisible 1s 1s;
	animation: mtvisible 1s 1s;
	-webkit-transition: mtvisible 1s ease-in-out 1s;
	transition: mtvisible 1s ease-in-out 1s;
	animation-fill-mode: forwards;
	-webkit-animation-fill-mode: forwards;
}

@
-webkit-keyframes mtl {
	from {-webkit-transform: translate(50px, 0px)
}

to {
	-webkit-transform: translate(15px, 0px)
}

}
@
keyframes mtl {
	from {transform: translate(50px, 0px)
}

to {
	transform: translate(15px, 0px)
}

}
@
-webkit-keyframes mtr {
	from {-webkit-transform: translate(-50px, 0px)
}

to {
	-webkit-transform: translate(20px, 0px)
}

}
@
keyframes mtr {
	from {transform: translate(-50px, 0px)
}

to {
	transform: translate(-15px, 0px)
}

}
.t-leftv {
	-webkit-animation: tleft 0.1s, mtvisible 1s 1s;
	animation: tleft 0.1s, mtvisible 1s 1s;
	-webkit-transition: mtvisible 1s ease-in-out 1s;
	transition: mtvisible 1s ease-in-out 1s;
	animation-fill-mode: forwards;
	-webkit-animation-fill-mode: forwards;
}

@
-webkit-keyframes tleft {
	from {-webkit-transform: translate(0px, 0px)
}

to {
	-webkit-transform: translate(-33px, 0px)
}

}
@
keyframes tleft {
	from {transform: translate(0px, 0px)
}

to {
	transform: translate(-33px, 0px)
}

}
@
-webkit-keyframes mtvisible {
	from {opacity: 0
}

to {
	opacity: 1
}

}
@
keyframes mtvisible {
	from {opacity: 0
}

to {
	opacity: 1
}

}
.t-move {
	-webkit-animation: tmove 1s 1s;
	animation: tmove 1s 1s;
	-webkit-transition: tmove 1s ease-in-out 1s;
	transition: tmove 1s ease-in-out 1s;
	animation-fill-mode: both;
	-webkit-animation-fill-mode: both;
}

.h-move {
	-webkit-animation: hmove 0.1s;
	animation: hmove 0.1s;
	animation-fill-mode: both;
	-webkit-animation-fill-mode: both;
}

@
-webkit-keyframes tmove {
	from {-webkit-transform: translatex(0px)
}

to {
	-webkit-transform: translatex(130x)
}

}
@
keyframes tmove {
	from {transform: translatex(0px)
}

to {
	transform: translatex(130px)
}

}
@
-webkit-keyframes hmove {
	from {-webkit-transform: translatex(-150px)
}

to {
	-webkit-transform: translatex(-150px)
}

}
@
keyframes hmove {
	from {transform: translatex(-150px)
}

to {
	transform: translatex(-150px)
}

}
.greyscle {
	-webkit-filter: brightness(60%);
	filter: brightness(60%)
}
</style>
</head>
<body>
	<div class="w3-container w3-white w3-top w3-cell-row w3-border"
		style="padding: 0px 0px; height: 60px; z-index: 2">
		<!-- <a href="#" class="w3-cell"
			style="width: 5%; font-weight: 900; font-size: 1.5em"> <span
			class="w3-text-white w3-padding-16 w3-left w3-margin-left w3-top w3-padding-4"
			style="width: 5%"> <span style="width: 5%" class="themecolor">H</span>ELP<span style="width: 5%" class="themecolor">D</span>ESK</span></a> -->
		<a href="index.jsp" class="w3-cell"
			style="width: 5%; font-weight: 900; font-size: 1.5em"> <span
			class="w3-text-white w3-padding-16 w3-left w3-margin-left w3-top w3-padding-3"
			style="width: 5%"> <img alt="images" src="images/logo.png" height="40px" width="200px"> </span></a>
		<div class=" w3-large w3-cell">
		
			<ul class="w3-navbar w3-right">
				<li><a
					class="w3-text-black w3-hover-text-white w3-hover-lime w3-padding-16 w3-white"
					href="about.jsp">About</a></li>
				<!-- <li><a
					class="w3-text-grey w3-hover-text-white w3-padding-16 w3-black"
					href="#">Home</a></li> -->
				<li><a
					class="w3-text-black w3-hover-text-white w3-hover-lime w3-padding-16 w3-white"
					href="login.jsp">Login</a></li>
				<li><a
					class="w3-text-black w3-hover-text-white w3-hover-lime w3-padding-16 w3-white"
					href="register.jsp">Registration</a></li>
				<li><a
					class="w3-text-black w3-hover-text-white w3-hover-lime w3-padding-16 w3-white"
					href="contactus.jsp">Contact Us</a></li>
			</ul>
		</div>
	</div> 
</body>
</html>