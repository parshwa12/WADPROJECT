package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Model;

public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminLoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String emailid = request.getParameter("emailid");
		String pass = request.getParameter("password");
		
		String page1 = "";
		
		Model m = new Model();
		m.setEmailId(emailid);
		m.setPassword(pass);
		
		String sql = "select * from  admin_master where EMAILID='"+emailid+"' and PASSWORD='"+pass+"'";
		try {
			ResultSet rs = Dao.login(m,sql);
			if(rs.next()){
				HttpSession session = request.getSession();
				session.setAttribute("adminemail",emailid);
				session.setAttribute("password",pass);
				page1="adminprofile.jsp?msg=success";
				System.out.println(session.getAttribute("adminemail").toString());
			}
			else{				
				page1="error.jsp?msg=fail";
			}
		} 
		catch (SQLException e) {
			
			e.printStackTrace();
		}
		response.sendRedirect(page1);
	}

}
