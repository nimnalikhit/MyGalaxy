<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Gallery</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  
  <body background="images/bd.gif">
<table width="100%" border="0" cellspacing="4" cellpadding="1">
  <tr>
    <td colspan="3"> <jsp:include page="mainheader.jsp"/></td>
  </tr>
  <tr>
    <td>&nbsp;<jsp:include page="mainleft.jsp"/></td>
    <td colspan="2" width="30%">&nbsp;
    
    <form action="show.jsp" method="get">
<input name="view gallery" value="view gallery" type="submit"/>
</form>
<br/> <br/>


<form action="upload.jsp" method="get">
<input name="upload image" value="upload image" type="submit"/>
</form>
    
    
    
    </td>
    
  </tr>
  <tr>
    <td colspan="3" width="70%">&nbsp;<jsp:include page="mainfooter.jsp"/></td>
  </tr>
</table>
  </body>
</html>
