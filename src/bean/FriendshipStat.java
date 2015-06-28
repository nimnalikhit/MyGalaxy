package bean;

import dao.*;

public class FriendshipStat {

private Boolean result1=false;	
private Boolean result2=false;	

FriendshipStatDAO fsd=new FriendshipStatDAO();

	
public Boolean isFriend(String mEmail,String fEmail)
{
result1=false;	
result1=fsd.chkFriend(mEmail,fEmail);

	
return result1;	
}




public Boolean isRequestSent(String mEmail,String fEmail )
{
	result2=false;	
	result2=fsd.chkRequest(mEmail,fEmail);
	return result2;
}



public void friend(String mEmail,String fEmail)
{
fsd.friend(mEmail, fEmail);	
}

}
