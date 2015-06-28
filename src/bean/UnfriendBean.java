package bean;

import dao.UnfriendDAO;



public class UnfriendBean {
	
	UnfriendDAO ufd=new UnfriendDAO();
	
	public void unfrn(String mEmail,String fEmail)
	{
	ufd.unfriend(mEmail,fEmail);
	}

}
