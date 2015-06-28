<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sendreq.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript">

  function change()
{
alert("Friend Request sent");
}
</script>
	
	
  </head>
  
  <body onload="change()" >
    <jsp:useBean id="fr" class="bean.FriendshipStat"/>
    <%
    String memail=request.getParameter("memail");
    String femail=request.getParameter("femail");
    System.out.println("inside send request.jsp here v hav got values as.."+memail+"...."+femail);
    
    
    fr.friend(memail,femail);
    request.setAttribute("femail",femail);
    response.sendRedirect("mygalaxy.jsp");
     %>
  </body>
</html>
