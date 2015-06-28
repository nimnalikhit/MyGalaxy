package bean;

import dao.RegisterDAO;

public class RegisterBean {
	private String user,pass,email,addr,dob,gender;
	private long mob;
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	
	public String getPass() {
		return pass;
	}
	public void setPass(String pwd) {
		this.pass = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getDob() {
		
		return (dob.replaceAll("/","-"));
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public long getMob() {
		return mob;
	}
	public void setMob(long mob) {
		this.mob = mob;
	}
	
	public void insert()
	{
		
		System.out.println("All values set now going to dao");
		RegisterDAO d=new RegisterDAO(this);
		d.insertRecord();
	}

}
