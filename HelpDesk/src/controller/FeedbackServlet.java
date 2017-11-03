package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import model.Model;

public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public FeedbackServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("emailid");
		String subject = request.getParameter("subject");
		String feedback = request.getParameter("feedback");
		String page = "";
		Model m = new Model();
		m.setEmailId(email);
		String sql = "insert into feedback_master(EMAILID,SUBJECT,FEEDBACK) values('"+email+"','"+subject+"','"+feedback+"')";
		try {
			int i = Dao.update(m,sql);
			if(i!=0){
				page="contactus.jsp?msg=succ";
			}
			else{
				page="contactus.jsp?msg=fail";
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect(page);
	}

}
