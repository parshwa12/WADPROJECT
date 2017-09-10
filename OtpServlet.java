package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.ForgotServlet;
/**
 * Servlet implementation class OtpServlet
 */
@WebServlet("/OtpServlet")
public class OtpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public OtpServlet() {
        super();
    
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		System.out.println("test");
		HttpSession session=request.getSession();
		String mail=(String)session.getAttribute("mailotp");
		String otps=request.getParameter("OTP");
		//String motp=ForgotServlet.otpget;
		String page="";
	    if(otps.equals(mail))
	    {
	    	System.out.println("Success");
	    	page="reset.jsp";
	    	response.sendRedirect(page);
	    }
	    else
	    {
	    	System.out.println("Failed");
	    }
	}
}
