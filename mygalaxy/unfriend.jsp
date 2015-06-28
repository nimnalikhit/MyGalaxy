<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'unfriend.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  
  <body> 
  <jsp:useBean id="f" class="bean.UnfriendBean"/>
  <%
  String my=(String)session.getAttribute("email");
  String frn=request.getParameter("femail");
  
  f.unfrn(my,frn);
  response.sendRedirect("mygalaxy.jsp");
  
   %>
    
  </body>
</html>
