package dao;

import java.sql.Connection;

import java.sql.Statement;

import connection.ConnectionProvider;

public class AcceptRequestDAO {
	
	String req;
	
	public void snd(String mEmail, String fEmail)
	{
		{
			try
			{
				Connection con=ConnectionProvider.getCon();	
				Statement stm=con.createStatement();
				stm.executeQuery("insert in friends values('"+mEmail+"','"+fEmail+"')");
				
				con.close();
				
				
				
			}catch(Exception e)
			{
				System.out.println("inside FriednshipStatDAO : "+e);
			}
			
		
			}
		
	}

}
