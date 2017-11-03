package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import model.Model;

public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DeleteUserServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page="";
		String button = request.getParameter("actionbutton");
		System.out.println(button);
		if(button.equals("Delete")){
		String emailid = request.getParameter("emailid");
			Model m = new Model();
			String sql = "delete from user_master where emailid='"+emailid+"'";
			System.out.println("sql="+sql);
			
			try {
				int i = Dao.update(m,sql);
				if(i>0){
					page="adminallusers.jsp?msg=deletesucc";
				}
				else{
					page="adminallusers.jsp?msg=deletefail";
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else{
			page="adminedituser.jsp?emailid="+request.getParameter("emailid");;
		}
		response.sendRedirect(page);
	}

}
