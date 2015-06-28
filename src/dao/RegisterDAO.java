package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import connection.ConnectionProvider;

import bean.RegisterBean;

public class RegisterDAO {
	
	private RegisterBean rb;

	public RegisterDAO(RegisterBean rb)
	{
		this.rb=rb;
	}
	public void insertRecord()
	{
		try
		{
			System.out.println("user  "+rb.getUser());
			System.out.println("password  "+rb.getPass());
			System.out.println("email  "+rb.getEmail());
			System.out.println("address  "+rb.getAddr());
			System.out.println("mobile  "+rb.getMob());
			System.out.println("dob  "+rb.getDob());
			System.out.println("gender  "+rb.getGender());
			
			Connection con=ConnectionProvider.getCon();
			System.out.println("got the connection");
			PreparedStatement ps=con.prepareStatement("insert into info values(?,?,?,?,?,?,?,'default.jpg')");
			ps.setString(2,rb.getUser());
			ps.setString(3,rb.getPass());
			ps.setString(1,rb.getEmail());
			ps.setString(4,rb.getAddr());
			ps.setLong(6,rb.getMob());
			ps.setString(5,rb.getDob());
			ps.setString(7,rb.getGender());
			ps.executeUpdate();
			ps.close();
			System.out.println("user data inserted");
			
			ps=con.prepareStatement("delete temp where email=?");
			ps.setString(1,rb.getEmail());
			ps.executeUpdate();
			ps.close();
			
			System.out.println("temp data deleted");
			
		}
		catch(Exception e)
		{
			System.out.println("register dao : "+e);
		}
	}

}
