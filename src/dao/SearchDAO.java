package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

import bean.SearchBean;


public class SearchDAO {
	
	private SearchBean sb;
	ArrayList bhu= null;
	
	public SearchDAO(SearchBean sb)
	{
		this.sb=sb;
	}
	
	public ArrayList SearchData(ArrayList aa)
	{
		try
		{	bhu=new ArrayList();
		    
			  System.out.println("inside search dao class");
			
			Connection con=connection.ConnectionProvider.getCon();
			Statement stm=con.createStatement();
			Iterator it=aa.iterator();
			while(it.hasNext())
			{
				String str=(String)it.next();
				System.out.println("before using select query for "+str);
				System.out.println("select * from info where uname like '%"+str+"%'");
				ResultSet rs=stm.executeQuery("select * from info where uname like '%"+str+"%'");
				
			//	System.out.println("using select query for "+str+" : value of rs.next() "+a);
				
				  while(rs.next())
				{
					  ArrayList bhuppi=new ArrayList();
					System.out.println("fetching result set :"+rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(7));
					bhuppi.add(rs.getString(2));
					bhuppi.add(rs.getString(1));
					bhuppi.add(rs.getString(7));
					bhuppi.add(rs.getString(8));
					System.out.println("after putting result in array bhuppi :"+bhuppi.size());
					bhu.add(bhuppi);	
				}
		
		

			}
			
		}
		catch(Exception e)
		{
		
			System.out.println("search dao : "+e);
		}
		System.out.println("final :"+bhu);
		return bhu;
	}

}