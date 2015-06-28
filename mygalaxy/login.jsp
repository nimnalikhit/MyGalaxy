<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  
 <body background="images/bd.gif">
  
  <table height="100%" width="100%" border="0" >
  <tr>
    <td colspan="3" height="33%"><jsp:include page="header.jsp"/></td>
  <td></td>
  </tr>
  <tr>
  
 
  
  <td width="25%" colspan="1" ><jsp:include page="mid.jsp"/> </td>
  
  <td width="20%"></td>
  <td width="25%" rowspan="2">&nbsp;<jsp:include page="right.jsp"/></td>
  
 </tr>
  <tr> <td></td>
    <td width="60%" height="36%"> <jsp:include page="signup.jsp"/></td>
   
    <td>&nbsp;</td>
     <td width="40%" height="36%">
   </td>
  </tr>
  <tr>
    <td colspan="3" height="14%"><jsp:include page="footer.jsp"/></td>
  </tr>
</table>
  
  
  </body>
</html>
