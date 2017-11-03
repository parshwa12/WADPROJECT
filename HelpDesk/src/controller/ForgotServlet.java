package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Model;
import email.Mailer;

public class ForgotServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String otpget=null;
    
	public ForgotServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page="";
		String email=request.getParameter("email");
		Model mforgotpass=new Model();
		mforgotpass.setEmailId(email);
		
	   	 String data="12345678901234567890123456789012345678901234567890";
	   	 String otp="";
	   		char ch[]=data.toCharArray();
	   		for(int i=0;i<5;i++)
	   		{
	   			int j=(int)((Math.random())*50);
	   			otp=otp+ch[j];
	   		}
	   		otpget="Your otp is: "+otp;
	   		HttpSession session=request.getSession();
			session.setAttribute("email", email);
			session.setAttribute("mailotp", otp);
	   		try {
				Mailer.send(email, "otp", otpget);
				System.out.println("Mail sent to the recipient");
				page="otp.jsp";
				response.sendRedirect(page);
			} catch (RuntimeException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
