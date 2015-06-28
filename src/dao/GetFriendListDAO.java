package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class GetFriendListDAO {
	
		
		ArrayList bhu= null;
		
		int count=1;
		
		public ArrayList SearchSmall(String s)
		{
			
			
			try
			{	bhu=new ArrayList();
			ArrayList bhuppi=null;
				  System.out.println("inside GetFrienListDAO class serching for friends of "+s);
				
				Connection con=connection.ConnectionProvider.getCon();
				Statement stm=con.createStatement();
				Statement stm1=con.createStatement();
				
					
					System.out.println("before using select query for "+s);
					ResultSet rs=stm.executeQuery("select * from friends where emaill like '%"+s+"%'");
					
					   bhuppi=new ArrayList();
					  while(rs.next())
					{
						  count++;
					
						
						System.out.println("fetching result set :"+rs.getString(2));
						
						ResultSet rs1=stm1.executeQuery("select * from info where email='"+rs.getString(2)+"'");
					while(rs1.next())
					{
						bhuppi.add(rs1.getString(1));
						bhuppi.add(rs1.getString(8));
						bhuppi.add(rs1.getString(2));
						System.out.println("after putting result in array bhuppi :"+bhuppi.size());
						bhu.add(bhuppi);	
					if(count>10)
					{
						break;
					}
					}
					}
			}
			catch(Exception e)
			{
			
				System.out.println("getFriend dao : "+e);
			}
			System.out.println("final :"+bhu);
			return bhu;
		}

	
				  
						
						public ArrayList SearchBig(String s)
						{
							
							
							
							try
							{	bhu=new ArrayList();
							ArrayList bhuppi=null;
								  System.out.println("inside GetFrienListDAO class serching for friends of "+s);
								
								Connection con=connection.ConnectionProvider.getCon();
								Statement stm=con.createStatement();
								Statement stm1=con.createStatement();
								
									
									System.out.println("before using select query for "+s);
									ResultSet rs=stm.executeQuery("select * from friends where emaill like '%"+s+"%'");
									
									   bhuppi=new ArrayList();
									  while(rs.next())
									{
									
										
										System.out.println("fetching result set :"+rs.getString(2));
										
										ResultSet rs1=stm1.executeQuery("select * from info where email='"+rs.getString(2)+"'");
									while(rs1.next())
									{
										bhuppi.add(rs1.getString(1));
										bhuppi.add(rs1.getString(8));
										bhuppi.add(rs1.getString(2));
										System.out.println("after putting result in array bhuppi :"+bhuppi.size());
										bhu.add(bhuppi);	
									
									}
									}
							}
							catch(Exception e)
							{
							
								System.out.println("getFriend dao : "+e);
							}
							System.out.println("final :"+bhu);
							return bhu;
						}

	}