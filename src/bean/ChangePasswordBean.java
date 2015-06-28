package bean;


public class ChangePasswordBean {
	private String pass,Email;

	
	
	
	

public String getPass() {
		return pass;
	}






	public void setPass(String pass) {
		this.pass = pass;
	}






	public String getEmail() {
		return Email;
	}






	public void setEmail(String email) {
		Email = email;
	}






public void change()
	{
	System.out.println("inside change of bean");
	dao.ChangePasswordDAO cpd=new dao.ChangePasswordDAO(this);
cpd.change();
System.out.println("back in change of bean");
	}
}
