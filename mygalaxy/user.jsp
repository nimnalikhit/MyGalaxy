<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'user.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  
  <body> 
    
 <table width="100%" border="0" cellspacing="4" cellpadding="1">
  <tr>
    <td colspan="3">&nbsp;<jsp:include page="mainheader.jsp"/></td>
  </tr>
  <tr>
    <td rowspan="2">&nbsp;<jsp:include page="mainleft.jsp"/></td>
    <td rowspan="2"> here will come the wall&nbsp;</td>
    
    <td>&nbsp;<jsp:include page="friend.jsp"/></td>
  </tr>
  <tr>
    
    <td>&nbsp;<jsp:include page="friendlist1.jsp"/></td>
    
  </tr>
  <tr>
    <td colspan="3">&nbsp;<jsp:include page="mainfooter.jsp"/></td>
  </tr>
</table>
    
  </body>
</html>
