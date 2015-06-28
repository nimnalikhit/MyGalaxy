package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;



import mail.*;


public class ForgotBean 
{
	private String email;

	public String getEmail() 
	{
		return email;
	}

	public void setEmail(String email) 
	{
		this.email = email;
	}
	
	public String verifyCode()
	{
		double d=Math.random();
//		double d1=Math.random();
		long l1=(long)(d*1000000);
		
		return "new"+l1+"KcZ";
	}
	public void sendMail()
	{
		try
		{
			System.out.println("inside bean and starting the process");
			ForgotPass.checkMail(email,verifyCode());
			Connection con=	connection.ConnectionProvider.getCon();
			System.out.println("Updating password");
			PreparedStatement ps=con.prepareStatement("update info set pass=? where email=? ");
			ps.setString(1,verifyCode());
			ps.setString(2,getEmail());
			ps.execute();
			System.out.println("update successfull");
		}
		catch(Exception e)
		{
			System.out.println("check mail bean / send mail : "+e);
		}
		
	}

}

