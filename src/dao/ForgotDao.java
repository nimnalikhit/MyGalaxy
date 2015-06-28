package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;


import bean.ForgotBean;

public class ForgotDao {
	private ForgotBean b;
	public ForgotDao(bean.ForgotBean b)
	{
		this.b=b;
	}
	
	public void change()
	{
		try
		{
		Connection con=	connection.ConnectionProvider.getCon();
		System.out.println("Updating password");
		PreparedStatement ps=con.prepareStatement("update info set pass=? where email=? ");
		ps.setString(1,newPass());
		ps.setString(2,b.getEmail());
		ps.execute();
		System.out.println("update successfull");
		
		
		
		
		}catch(Exception e)
		{
			System.out.println("Exception in ForgetDao :"+e);
		}
		
	}

	
		public String newPass()
		{
			double d=Math.random();
			double d1=Math.random();
			long l1=(long)(d*1000000);
			long l2=(long)(d1*1000000);
			return "wen"+l1+"gal"+l2+"pass";
		}
		
		
}


