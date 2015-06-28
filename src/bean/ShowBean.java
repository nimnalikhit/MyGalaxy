package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.ConnectionProvider;

public class ShowBean {
	
	ResultSet rs;
	public ResultSet show(String email)
	{
		try
		{
			Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement("select * from gallery where email='"+email+"'");
			rs=ps.executeQuery();
		}
		catch(Exception e)
		{
			System.out.println("show : "+e);
		}
		return rs;
	}

}
