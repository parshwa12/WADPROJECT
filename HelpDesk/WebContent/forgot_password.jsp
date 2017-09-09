<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="forgot_password" method="get">
  <div id="forgot_password_header">
        Forgot Password
  </div>
  <div id="form_val">
    <div class="label">Email:</div>
    <div class="control"><input type="text" name="Email" id="Email"/></div>

    <div class="label">Mobile number:</div>
    <div class="control"><input type="number" name="number" min="7000000000" max="999999999" id="number"/></div>

    <div id="msgbox"></div>
  </div>

  <div id="login_footer">
  <!-- <script type="text/javascript">
  function closewindow() {
  window.close()
  }
  </script>-->
     <label>
    <input type="submit" onclick="location.href='http://localhost:8080/IntegrateAll/otp.jsp'" window.close();" name="Submit" id="Submit" value="Submit" class="send_button" />
    </label>
  </div>

</form>
</body>
</html>