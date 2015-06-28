package bean;

import dao.AcceptRequestDAO;

public class SendRequestBean {
	
	public void send(String mEmail, String fEmail)
	{
		AcceptRequestDAO srd=new AcceptRequestDAO();
		srd.snd(mEmail,fEmail);
	}

}
