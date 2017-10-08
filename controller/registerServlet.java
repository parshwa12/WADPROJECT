package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.dao;
import model.Model;


public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public registerServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String aadhar = request.getParameter("anumber");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lnam");
		String email = request.getParameter("email");
		String dob = request.getParameter("dob");
		String pass = request.getParameter("password");
		String cpass = request.getParameter("cpass");
		String code = request.getParameter("code");
		String page = "";
		
		if(pass.equals(cpass)){
			HttpSession session=request.getSession();
			String captcha = (String)session.getAttribute("captcha");
			
			if(captcha.equals(code)){
				Model m = new Model();
				m.setAadharNo(aadhar);
				m.setFname(fname);
				m.setLname(lname);
				m.setEmailId(email);
				m.setDob(dob);
				m.setPassword(pass);
				
				if(pass.equals(cpass)){
					String sql = "insert into user_master(AADHARNO,FNAME,LNAME,EMAILID,PASSWORD,DOB) values(?,?,?,?,?,?)";
					try {
						int i = dao.register(m,sql);
						if(i!=0){
							page="login.jsp?msg=success";
						}
						else{
						
							page="error.jsp?msg=fail";
						}
					} 
					catch (SQLException e) {
					
						e.printStackTrace();
					}
				
				}
				
				}
			}
		
	}

}
