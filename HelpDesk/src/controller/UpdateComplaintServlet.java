package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import model.Model;
public class UpdateComplaintServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateComplaintServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String status = request.getParameter("status");
		String description = request.getParameter("description");
		String page="";
		System.out.println("id="+id+" status="+status+" desc="+description);
		Integer y = Integer.parseInt(id);
			Model m = new Model();
			String sql = "update complaint_master set status='"+status+"', description='"+description+"' where complaintid="+y;
			System.out.println("sql="+sql);
			
			try {
				int i = Dao.update(m,sql);
				if(i>0){
					page="adminupdatecomplaint.jsp?msg=success";
				}
				else{
					page="adminupdatecomplaint.jsp?msg=err"; //URL Rewriting
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		response.sendRedirect(page);
	}

}
