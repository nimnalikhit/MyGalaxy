package bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import connection.ConnectionProvider;



public class MainInfoBean {
	
	
	public  String photo;
	public  String user;
	public  String address;
	public  String mob;
	
	public String getPhoto(String email)
	{
		Connection con=ConnectionProvider.getCon();
		try
		{
			Statement stm=con.createStatement();
			ResultSet rs=stm.executeQuery("select * from info where email='"+email+"'");
			System.out.println("checking for photo");
			while(rs.next())
			{	System.out.println("got photo");
				photo =rs.getString(8);
			}
		}catch(Exception e)
		{
			System.out.println("inside MainLeftBean"+e);
		}
		return (photo);

	}
	
	
	public String getUser(String email)
	{
		Connection con=ConnectionProvider.getCon();
		try
		{
			Statement stm=con.createStatement();
			ResultSet rs=stm.executeQuery("select * from info where email='"+email+"'");
			System.out.println("checking for adderss");
			while(rs.next())
			{	
				System.out.println("got user");
				user =rs.getString(2);
			}
		}catch(Exception e)
		{
			System.out.println("inside MainLeftBean"+e);
		}
		return (user);

	}
	
	
	
	public String getAddress(String email)
	{
		Connection con=ConnectionProvider.getCon();
		try
		{
			Statement stm=con.createStatement();
			ResultSet rs=stm.executeQuery("select * from info where email='"+email+"'");
			System.out.println("checking for address");
			while(rs.next())
			{	System.out.println("got address");
				address =rs.getString(4);
			}
		}catch(Exception e)
		{
			System.out.println("inside MainLeftBean"+e);
		}
		return (address);

	}
	
	
	public String getMobile(String email)
	{
		Connection con=ConnectionProvider.getCon();
		try
		{
			Statement stm=con.createStatement();
			ResultSet rs=stm.executeQuery("select * from info where email='"+email+"'");
			System.out.println("checking for mobile");
			while(rs.next())
			{
				System.out.println("got mobile");
				mob =rs.getString(6);
			}
		}catch(Exception e)
		{
			System.out.println("inside MainLeftBean"+e);
		}
		return (mob);

	}
	
	
	
	}