package dao;

import java.sql.Connection;
import java.sql.Statement;
import connection.ConnectionProvider;

public class UnfriendDAO {
	
	
	public void unfriend(String mEmail,String fEmail)
	{
		try
		{
			Connection con=ConnectionProvider.getCon();	
			Statement stm=con.createStatement();
			System.out.println("Got connection");
			stm.executeUpdate("delete from friends where emaill ='"+mEmail+"' and friends_email='"+fEmail+"'");
			Statement stm1=con.createStatement();
			System.out.println("values of email v hav got is... "+mEmail+"  :  "+fEmail);
			System.out.println("first query complete");
			stm1.executeUpdate("delete from friends where	emaill='"+fEmail+"' and friends_email='"+mEmail+"'");
			System.out.println("Second query complete");
			
		}catch(Exception e)
		{
			System.out.println("inside UnfriendDAO : "+e);
		}
	}
	

}
