package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;



import mail.SendMailMain;


public class CheckMailBean {
	private String email;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String verifyCode()
	{
		double d=Math.random();
		double d1=Math.random();
		long l1=(long)(d*1000000);
		long l2=(long)(d1*1000000);
		return "My"+l1+"KcZ"+l2+"Ga";
	}
	public void sendMail()
	{
		try
		{
			SendMailMain.checkMail(email,verifyCode());
			Connection con=connection.ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement("insert into temp values (?,?)");
			ps.setString(1,email);
			ps.setString(2,verifyCode());
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("check mail bean / send mail : "+e);
		}
		
	}

}
