package dao;

//import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import bean.LoginChkBean;

public class LoginChkDAO {

	public static String email;
	public static String pass;
	public static String pas,mail;
	
	
	public Connection con;
	private LoginChkBean lcb;
	
	public LoginChkDAO(LoginChkBean lcb)
	{
		 this.lcb=lcb;
	}
	private static Boolean result=false;
	public Boolean check()
	{
		try
			{
			
			Connection con=connection.ConnectionProvider.getCon();
			PreparedStatement	ps=con.prepareStatement("Select * from info where EMAIL=? and PASS=?");
			
			ps.setString(1, lcb.getEmail());
			ps.setString(2,lcb.getPass());
		   ResultSet rs=ps.executeQuery(); 
			 System.out.println("email is "+lcb.getEmail()+" password is : "+lcb.getPass()+" and Got result set ");
			
			 result=false;
			while(rs.next())
			{   System.out.println("now inside while and this user exist");
				result=true;
				break;
			} 
		}catch(Exception e)
		{
			System.out.println("LoginChkDAO :"+e);
		}
		System.out.println("result we got is : "+result);
		return result;
		
		
			
		
	}
}