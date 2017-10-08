package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.dao;
import model.Model;


public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String aadhar = request.getParameter("anumber");
		String pass = request.getParameter("password");
		HttpSession aadharNo = request.getSession();
		
		String page1 = "";
		
		Model m = new Model();
		m.setAadharNo(aadhar);
		m.setPassword(pass);
		
		
		String sql = "select * from  user_master where AADHARNO='"+aadhar+"' and PASSWORD'"+pass+"'";
		try {
			ResultSet rs = dao.login(m,sql);
			if(true){
				page1="login.jsp?msg=success";
			}
			else{
				
				page1="error.jsp?msg=fail";
			}
		} 
		catch (SQLException e) {
			
			e.printStackTrace();
		}

		
	}
	}


