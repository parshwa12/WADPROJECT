<%@page import="java.awt.image.BufferedImage"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.OutputStream"%>
<%@ page import="java.awt.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Captcha</title>
	</head>
<%
int width=155;
int height=50;
BufferedImage buf= new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
Graphics2D g=buf.createGraphics();
GradientPaint gp= new GradientPaint(0,0,Color.GREEN,0,height/2,Color.WHITE,true);

g.setPaint(gp);

Font f= new Font("Times New Roman",Font.PLAIN,26);

g.setFont(f);

g.fillRect(0, 0, width, height);

g.setColor(new Color(0,0,0));

String data="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
String captcha="";
String captcha1="";
char ch[]=data.toCharArray();
for(int i=0;i<6;i++)
{
	int j=(int)((Math.random())*62);
	captcha=captcha+" "+ch[j];
	captcha1=captcha1+ch[j];
	
}
session.setAttribute("captcha", captcha1);
response.setContentType("image/png");
g.drawString(captcha, 10, 28);

g.dispose();

OutputStream os= response.getOutputStream();

ImageIO.write(buf, "png", os);
os.close();
%>

<body>

</body>
</html>