package createdb;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.Statement;
import java.util.StringTokenizer;




public class CreateDB {

	public static void create(String path)
	{
		try
		{
			FileInputStream fin=new FileInputStream(path);
			byte[] b=new byte[fin.available()];
			fin.read(b);
			String queries=new String(b);
			StringTokenizer st=new StringTokenizer(queries,"?" );
			System.out.println("asking for connection");
			Connection con=connection.ConnectionProvider.getCon();
			System.out.println("Got connection");
			
			Statement stm=con.createStatement();
			
			while(st.hasMoreTokens())
			{
				String query=st.nextToken();
				System.out.println("token is working");
				if(query.trim().equals("quit"))
				{
					break;
				}
				System.out.println("query loaded ");
			stm.execute(query);
			System.out.println("query executed");
			
			}
		System.out.println("database created .........");	
			
		}catch(Exception e)
		{
			System.out.println("database creation failed :-(   "+e);
		}
	}
}
