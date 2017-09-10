package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Model;

public class DBAccess {
	public static Connection conn=null;
	public static PreparedStatement ps=null;
static
{
	try
	{
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		
 conn=DriverManager.getConnection("jdbc:db2://localhost:50000/INTERNAL","parshwa","dry1");
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
}
public static int register(Model m,String sql) throws SQLException
{
	ps=conn.prepareStatement(sql);
	int i=ps.executeUpdate();
	return i;
}
public static int update(Model m1,String sql) throws SQLException
{
	ps=conn.prepareStatement(sql);
	int i=ps.executeUpdate();
	return i;
}

}
