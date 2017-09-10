package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import email.Sendmail;
import model.Model;

/**
 * Servlet implementation class ForgotServlet
 */
@WebServlet("/ForgotServlet")
public class ForgotServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public static String otpget=null;
    
    public ForgotServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page="";
		String email=request.getParameter("emailid");
		Model mforgotpass=new Model();
		mforgotpass.setEmailid(email);
		String sqlforgotpass="";
		HttpSession session1=request.getSession();
		session1.setAttribute("emailids", email);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("connected");

	   	 String data="12345678901234567890123456789012345678901234567890";
	   	 String otp="";
	   		char ch[]=data.toCharArray();
	   		for(int i=0;i<5;i++)
	   		{
	   			int j=(int)((Math.random())*50);
	   			otp=otp+ch[j];
	   		}
	   		otpget=otp;
	   		HttpSession session=request.getSession();
			session.setAttribute("mailotp", otpget);
	   		Sendmail m =new Sendmail();
	   		try {
				boolean b=m.sendMail(email, otpget);
				if(b==true)
				{
					out.println("Mail sent to the recipient");
					page="otp.jsp";
					response.sendRedirect(page);
				}
				else
				{
					out.println("Failed");
				}
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
