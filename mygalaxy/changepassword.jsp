<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>changepassword.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

	
  </head>
  
  <body background="images/bd.gif">
<%   String email=(String)session.getAttribute("email");
System.out.println("inside changepassword.jsp file");
 %>
  <table width="100%" border="0" cellspacing="4" cellpadding="1">
  <tr>
    <td colspan="2"><jsp:include page="mainheader.jsp"/> </td>
  </tr>
  <tr>
    <td width="7%"><jsp:include page="mainleft.jsp"></jsp:include>  </td>
    <td width="93%">
    
    
    
 <form action="password.jsp" method="post">
<table width="100%" border="0" cellspacing="4" cellpadding="1">
 
  <tr>
    <td width="27%"> </td>
    <td width="73%"><input name="email" type="hidden" value="<%=email %>"/></td>
  </tr>
   <tr>
    <td>Old Password </td>
    <td><input name="pass" type="password" /></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>New Password </td>
    <td><input name="pass" type="password" /></td>
  </tr>
  <tr>
    <td width="27%">Confirm Password </td>
    <td width="73%"><input name="pass1" type="password" /></td>
  </tr>
  <tr>
    <td>&nbsp;  </td>
    <td><input name="Change Password" type="submit" value="Change Password" /></td>
  </tr>
  
</table></form>
    </td>
  </tr>
  <tr>
    <td colspan="2"><jsp:include page="mainfooter.jsp"/></td>
  </tr>
</table>

  
   
  
  </body>
</html>
