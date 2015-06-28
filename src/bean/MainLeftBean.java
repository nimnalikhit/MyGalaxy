package bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import connection.ConnectionProvider;



public class MainLeftBean {
	
	
	public static String photo;
	public String get(String email)
	{
		Connection con=ConnectionProvider.getCon();
		try
		{
			Statement stm=con.createStatement();
			ResultSet rs=stm.executeQuery("select * from info where email='"+email+"'");

			while(rs.next())
			{
				photo =rs.getString(8);
			}
		}catch(Exception e)
		{
			System.out.println("inside MainLeftBean"+e);
		}
		return ("images/"+photo);

}
}