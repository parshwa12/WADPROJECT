package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DBAccess;
import model.Model;

/**
 * Servlet implementation class ResetServlet
 */
@WebServlet("/ResetServlet")
public class ResetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResetServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String pass=request.getParameter("resetpass");
		String pass1=request.getParameter("confpass");
		HttpSession session1=request.getSession();
		String email=(String)session1.getAttribute("emailids");
		
		String page="";
		if(pass.equals(pass1))
		{
		
		String sql="UPDATE REGISTER1 SET PASSWORD='"+pass+"' WHERE EMAIL='"+email+"'";
		
		Model m1=new Model();
		m1.setPassword(pass);
		try
		{
			int j=DBAccess.update(m1, sql);
			if(j!=0)
			{
				page="login.jsp";
				response.sendRedirect(page);
				HttpSession session=request.getSession();
				session.getAttribute("mailotp");
				session.invalidate();
				session1.invalidate();
			}
			else
			{
				page="error.jsp";
				response.sendRedirect(page);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		}
	}

}
