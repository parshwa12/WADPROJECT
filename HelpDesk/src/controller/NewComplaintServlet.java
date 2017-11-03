package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Model;

public class NewComplaintServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public NewComplaintServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String domain = request.getParameter("domain");
		String complaint = request.getParameter("complaint");
		String page = "";
		HttpSession session=request.getSession();
		String email = (String)session.getAttribute("email");
		DateFormat dateFormat = new SimpleDateFormat("dd-M-yyyy HH:mm:ss");
		Date date = new Date();
		String dateposted=dateFormat.format(date);
		Model m = new Model();
		m.setEmailId(email);
		String sql = "insert into complaint_master(USEREMAIL,DOMAIN,COMPLAINT,DATEPOSTED,STATUS) values('"+email+"','"+domain+"','"+complaint+"','"+dateposted+"','"+"analysing"+"')";
		try {
			int i = Dao.update(m,sql);
			if(i!=0){
				page="newcomplaint.jsp?msg=compsucc";
			}
			else{
				page="newcomplaint.jsp?msg=compfail";
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect(page);
	}

}
