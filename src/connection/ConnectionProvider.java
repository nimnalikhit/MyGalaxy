package connection;

import java.sql.Connection;
import java.sql.DriverManager;


public class ConnectionProvider {

	public static Connection con=null;
	
	public static Connection getCon()
	{
		try
		{
		String	driver=System.getProperty("driver");
		System.out.println("driver loaded :"+driver);
		String	connection=System.getProperty("connection");
		System.out.println("connection loaded");
		
		String	user=System.getProperty("user");
		System.out.println("user loaded");
		String	pass=System.getProperty("pass");
		System.out.println("password loaded");	
			if(con==null)
			{
				Class.forName(driver);
				System.out.println("class.forName ");
				con=DriverManager.getConnection(connection,user,pass);
				
			}
			
			}catch(Exception e)
		 {
				System.out.println("ConnectionProvider :"+e);
		 }
		return con;
		
	}
	
}
