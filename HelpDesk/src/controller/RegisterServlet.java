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

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegisterServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path=getServletContext().getRealPath("");
		path=path+"images\\";
		System.out.println(path);
		
		MultipartRequest  mr= new MultipartRequest(request,path,10*1024*1024); 
		String aadhar = mr.getParameter("anumber");
		System.out.println(aadhar);
		String fname = mr.getParameter("fname");
		System.out.println(fname);
		String lname = mr.getParameter("lname");
		System.out.println(lname);
		String email = mr.getParameter("email");
		System.out.println(email);
		String dob = mr.getParameter("dob");
		System.out.println(dob);
		String pass = mr.getParameter("password");
		System.out.println(pass);
		String cpass = mr.getParameter("confirmpassword");
		System.out.println(cpass);
		String code = mr.getParameter("code");
		System.out.println(code);
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
						int i = Dao.register(m,sql);
						if(i!=0){							
							String upath=path+email+".jpg";
							
							File f=mr.getFile("photo");
							File newFile=new File(upath);
							newFile.delete();
							f.renameTo(newFile);
							page="login.jsp?msg=regsucc";
						}
						else{
						
							page="error.jsp?msg=regfail";
						}
					} 
					catch (SQLException e) {
					
						e.printStackTrace();
					}
				}		
			}
		}
		response.sendRedirect(page);
	}
}
