package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import connection.ConnectionProvider;



public class FriendshipStatDAO {

	private Boolean r1=false;	
	private Boolean r2=false;	
	
	
	
	
public FriendshipStatDAO() {
		
	}



public Boolean	chkFriend(String memail,String femail)
	{
	try
	{
		Connection con=ConnectionProvider.getCon();	
		Statement stm=con.createStatement();
		ResultSet rs=stm.executeQuery("select * from friends where emaill ='"+memail+"' and friends_email='"+femail+"'");
		System.out.println("got result set1");
		
		Boolean a=rs.next();
		System.out.println("checking for friend value of rs.next is "+a);
		if(a)
		{
		r1=true;	 
		}
		
		
		
	}catch(Exception e)
	{
		System.out.println("inside FriednshipStatDAO : "+e);
	}
	
	return r1;
	}


	
public Boolean chkRequest(String memail,String femail)
{

	try
	{
		Connection con=ConnectionProvider.getCon();	
		Statement stm=con.createStatement();
		ResultSet rs=stm.executeQuery("select * from friend_request where email ='"+femail+"' and friend_request='"+memail+"'");
		r2=false;
		
		Boolean b=rs.next();
		System.out.println("checking for request value of rs.next is "+b);
		if(b)
		{
		
			 r2=true;
		}
		
		
	}catch(Exception e)
	{
		System.out.println("inside FriednshipStatDAO : "+e);
	}
	
	return r2;
	}

public void	friend(String memail,String femail)
{
try
{
	Connection con=ConnectionProvider.getCon();	
	PreparedStatement stm=con.prepareStatement("insert into friend_request values(?,?)");
	stm.setString(1, femail);
	stm.setString(2, memail);
	stm.executeUpdate();
	System.out.println("(inside frndshp stat dao)   got statement and values of email is ................"+memail+":::::::"+femail);
	System.out.println("added as friend");
	
	
	
	
	
}catch(Exception e)
{
	System.out.println("inside FriednshipStatDAO : "+e);
}


}




}
