<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'usermid.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body> 
    <% 
    
    String femail=(String)request.getAttribute("femail");
   System.out.println(" email of this guy is"+femail);
    %>
    <jsp:useBean id="gg" class=bean.MainInfoBean/>


<table width="100%" border="0" cellspacing="4" cellpadding="1">

  

  <tr>
    <td>&nbsp;User name</td>
    <td>&nbsp;</td>
    <td>&nbsp;<%=gg.getUser(femail) %></td>
  </tr>
  <tr>
    <td>&nbsp;E-mail</td>
    <td>&nbsp;</td>
    <td>&nbsp;<%=femail%></td>
  </tr>
  
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>



    
  </body>
</html>
