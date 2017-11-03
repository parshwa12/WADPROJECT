package controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import dao.Dao;
import model.Model;

public class AddAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AddAdminServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		String cpass = request.getParameter("confirmpassword");
		String page = "";
		Model m = new Model();
		if(pass.equals(cpass)){
			String sql = "insert into admin_master values('"+email+"','"+pass+"')";
			try {
				int i = Dao.update(m,sql);
				if(i!=0){							
					page="adminaddadmin.jsp?msg=addsucc";
				}
				else{
				
					page="adminaddadmin.jsp?msg=addfail";
				}
			}
			catch (SQLException e) {
				e.printStackTrace();
			}		
		}
		response.sendRedirect(page);
	}

}
