<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="otp" method="get">
<div id="login_box">
  <div id="login_header">
        OTP Generation
  </div>
  <div id="form_val">
    <div class="label">Enter OTP:</div>
    <div class="control"><input type="number"  min="0000" max="9999" name="otp" id="otp"/></div>
    <div id="msgbox"></div>
  </div>

  <div id="login_footer">
  <!-- <script type="text/javascript">
  function closewindow() {
  window.close()
  }
  </script>-->
     <label>
    <input type="submit" onclick="location.href='http://localhost:8080/IntegrateAll/change_pass.jsp'" window.close();" name="Submit" id="Submit" value="Submit" class="send_button" />
    </label>
  </div>
</div>

</body>
</html>