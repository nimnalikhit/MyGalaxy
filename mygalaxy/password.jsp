<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>password.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

</head>

<body>
  
  
  

<jsp:useBean id="p" class="bean.ChangePasswordBean"/>    
<jsp:setProperty property="*" name="p"/>
<%
System.out.println("inside password.jsp calling change function ");
String a=request.getParameter("email");
System.out.println("---"+a+"---");

p.change();

response.sendRedirect("mygalaxy.jsp");

 %>
 <script="text/javascript">
 alert("Paassword changed successfully");
 
 </script>
  </body>
</html>
