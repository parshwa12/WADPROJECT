package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Model;

public class Dao {
	
	
	static Connection conn=null;
	static {
		try{			
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		conn = DriverManager.getConnection("jdbc:db2://localhost:50000/hd_db","userid","password");		
		}
		catch(Exception e){
			e.printStackTrace();			
		}
	}
	
	public static int register(Model m, String sql) throws SQLException{
		
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, m.getAadharNo());
		ps.setString(2, m.getFname());
		ps.setString(3, m.getLname());
		ps.setString(4, m.getEmailId());
		ps.setString(5, m.getPassword());
		ps.setString(6, m.getDob());
		int i = ps.executeUpdate();
		return i;
	}

	public static ResultSet login(Model m, String sql) throws SQLException {
		
		PreparedStatement ps = conn.prepareStatement(sql);		
		ResultSet rs = ps.executeQuery();
		return rs;
	}
	public static int update(Model m,String sql) throws SQLException
	{
		PreparedStatement ps=conn.prepareStatement(sql);
		int i=ps.executeUpdate();
		return i;
	}
}
