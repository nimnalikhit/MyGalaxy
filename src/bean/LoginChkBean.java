package bean;

import dao.LoginChkDAO;


public class LoginChkBean {
   public Boolean flag;
	private String email,pass;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
	public boolean chk()
	{
	System.out.println("In bean and here email is "+getEmail()+" password is : "+getPass()+"checking these values");
	LoginChkDAO ld= new LoginChkDAO(this);
	flag=ld.check(); 
	return flag;
	}

}
	