<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Basic Info</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body background="images/bd.gif"> 
  <jsp:useBean id="pic" class="bean.MainInfoBean"/>
  <%
String email=(String)session.getAttribute("email");
String user=pic.getUser(email);
String addr=pic.getAddress(email);
String mob=pic.getMobile(email);
 %>
  
  
  
  <form action="changeinfo.jsp" method="post">
<table width="100%"  border="0" cellspacing="0">
  <tr>
    <td colspan="6" ><jsp:include page="mainheader.jsp"/></td>
    </tr>
     <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;<h2>Change info here-</h2><br></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="4%">&nbsp;</td>
    <td width="26%">&nbsp;</td>
    <td width="24%">&nbsp;</td>
    <td width="38%">&nbsp;</td>
    <td width="4%">&nbsp;</td>
    <td width="4%">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>user name </td>
    <td><input name="user" type="text" value="<%=user %>"  size="30">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  
  
  
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td valign="bottom">Adddress</td>
    <td valign="middle"><textarea name="addr" cols="25" rows="5" value="<%=addr %>"></textarea>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;Mobile Number </td>
    <td><input name="mob" type="text" size="30" value="<%=mob %>">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  
 
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><input name="" type="submit" value="Update"/></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>

    <td colspan=6><jsp:include page="mainfooter.jsp"/></td>
  </tr>
 

  <tr>
    <td colspan="6"></td>
    </tr>
</table>
</form>  
  
  
  
   
  </body>
</html>
