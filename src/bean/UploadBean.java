package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;

import connection.ConnectionProvider;

public class UploadBean {
	
	private String user;
	private String file;

	public void setInfo(String file,String user)
	{
		this.file=file;
		this.user=user;
	}
	
	

	
	
	public void insert()
	{
		try
		{
			Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement("insert into gallery values (?,?)");
			ps.setString(1,user);
			ps.setString(2,file);
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("upload : "+e);
		}
	}

}






