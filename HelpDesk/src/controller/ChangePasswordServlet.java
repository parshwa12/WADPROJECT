package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Model;

public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ChangePasswordServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String password = session.getAttribute("password").toString();
		String oldpass = request.getParameter("oldpass");
		String newpass = request.getParameter("newpass");
		String conpass = request.getParameter("conpass");
		String page="";
		if(oldpass.equals("")||newpass.equals("")||conpass.equals("")){
			page="changepassword.jsp?msg=empty"; //URL Rewriting
		}
		else if(!oldpass.equals(password)){
			page="changepassword.jsp?msg=oldinvalid";
		}
		else if(!newpass.equals(conpass)){
			page="changepassword.jsp?msg=nomatch";
		}
		else{
			Model m = new Model();
			String email=session.getAttribute("email").toString();
			m.setPassword(newpass);
			String sql = "update user_master set password='"+newpass+"' where emailid='"+email+"'";
			try {
				int i = Dao.update(m,sql);
				if(i>0){
					page="changepassword.jsp?msg=success";
				}
				else{
					page="changepassword.jsp?msg=err"; //URL Rewriting
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		response.sendRedirect(page);
	}
}
