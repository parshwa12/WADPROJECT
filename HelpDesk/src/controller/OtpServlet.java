package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class OtpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public OtpServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String mail=(String)session.getAttribute("mailotp");
		String otps=request.getParameter("otp");
		String page="";
	    if(otps.equals(mail))
	    {
	    	System.out.println("Success");
	    	page="reset.jsp";
	    }
	    else
	    {
	    	System.out.println("Failed,otp="+mail);
	    	page="otp.jsp?msg=nomatch";
	    }
	    response.sendRedirect(page);
	}

}
