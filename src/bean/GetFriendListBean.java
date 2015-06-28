package bean;

import java.util.ArrayList;

import dao.GetFriendListDAO;

public class GetFriendListBean {
	


		ArrayList al1=null;
		
		GetFriendListDAO gfd=new GetFriendListDAO();
		
		public ArrayList small(String femail)
		{   
			System.out.println("GetFrienBean  searching his friends");
			 al1=gfd.SearchSmall(femail);
			  System.out.println("GetFrienBean  got all his friend"+al1);
			return al1;
		}

	
		public ArrayList big(String femail)
		{   
			System.out.println("bean getFriend class");
			 al1=gfd.SearchBig(femail);
			  System.out.println("GetFrienBean  got all his friend"+al1);
			return al1;
		}

}


