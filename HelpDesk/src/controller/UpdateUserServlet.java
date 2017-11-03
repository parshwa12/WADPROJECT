package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import model.Model;

public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public UpdateUserServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String emailid = request.getParameter("emailid");
		String dob = request.getParameter("dob");
		String page="";
			Model m = new Model();
			String sql = "update user_master set fname='"+fname+"', lname='"+lname+"' , dob='"+dob+"' where emailid='"+emailid+"'";
			System.out.println("sql="+sql);
			
			try {
				int i = Dao.update(m,sql);
				if(i>0){
					page="adminedituser.jsp?msg=editsucc&emailid="+emailid;
				}
				else{
					page="adminedituser.jsp?msg=editerr&emailid="+emailid;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		response.sendRedirect(page);
	}

}
