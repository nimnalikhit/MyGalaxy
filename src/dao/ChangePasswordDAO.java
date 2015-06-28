package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;





public class ChangePasswordDAO {
	
	bean.ChangePasswordBean cpb=null;
	public ChangePasswordDAO(bean.ChangePasswordBean cpb)
	{
		this.cpb=cpb;
	}
	
	
	
	public void change()
	{
		try
		{
		
			System.out.println("inside change of dao");
		System.out.println("inside change values of email= "+cpb.getEmail()+" value of password is :"+cpb.getPass());

		Connection con=	connection.ConnectionProvider.getCon();
	
		PreparedStatement ps=con.prepareStatement("update info set pass=? where email=? ");
		ps.setString(1, cpb.getPass());
		ps.setString(2, cpb.getEmail());
	
		ps.executeUpdate();
		System.out.println("password updated successfully");

		}catch(Exception e)
	
		{
			System.out.println("ChangePasswordBean "+e);	
		}
	
	}
}
