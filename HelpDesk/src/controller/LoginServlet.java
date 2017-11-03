package controller;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Model;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LoginServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String aadhar = request.getParameter("anumber");
		String pass = request.getParameter("password");
		
		String page1 = "";
		
		Model m = new Model();
		m.setAadharNo(aadhar);
		m.setPassword(pass);
		
		String sql = "select * from  user_master where AADHARNO='"+aadhar+"' and PASSWORD='"+pass+"'";
		try {
			ResultSet rs = Dao.login(m,sql);
			if(rs.next()){
				HttpSession session = request.getSession();
				session.setAttribute("aadharno",aadhar);
				session.setAttribute("email", rs.getString("emailid"));
				session.setAttribute("password",pass);
				page1="newcomplaint.jsp?msg=success";
				System.out.println(session.getAttribute("email").toString());
			}
			else{				
				page1="error.jsp?msg=loginfail";
			}
		} 
		catch (SQLException e) {
			
			e.printStackTrace();
		}
		response.sendRedirect(page1);
	}

}
