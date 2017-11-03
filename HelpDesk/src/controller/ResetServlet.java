package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Model;

public class ResetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public ResetServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pass=request.getParameter("newpass");
		String pass1=request.getParameter("conpass");
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		
		String page="";
		if(pass.equals(pass1))
		{
		System.out.println("email="+email+" password="+pass);
		String sql="UPDATE user_master SET PASSWORD='"+pass+"' WHERE EMAILID='"+email+"'";
		
		Model m1=new Model();
		m1.setPassword(pass);
		try
		{
			int j=Dao.update(m1, sql);
			if(j>0)
			{
				page="login.jsp?msg=resetsucc";
				session.invalidate();
							
			}
			else
			{
				page="error.jsp?msg=resetfail";
			}			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		}
		else{
			page="reset.jsp?msg=nomatch";
		}
		response.sendRedirect(page);
	}
}
