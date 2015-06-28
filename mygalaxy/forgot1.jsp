<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>forget password </title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  
  <body> 
  <jsp:useBean id="fr" class="bean.ForgotBean"/>
  <jsp:setProperty property="*" name="fr"/>
 <%
 fr.sendMail();
 %>
 <script type="text/javascript">
 alert("your password is changed .. \n New password is sended to your Email");
 </script>
 <%
 response.sendRedirect("login.jsp");
  %>
    <br>
  </body>
</html>
