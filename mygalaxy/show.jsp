<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Show uploaded image</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
<jsp:useBean id="show" class="bean.ShowBean"></jsp:useBean>  
  <body background="images/bd.gif">
  <%
  String email=(String)session.getAttribute("email");
  
  
   %>
    
<table width="100%" border="0">
  <tr>
    <td colspan="2" height="10%"><jsp:include page="mainheader.jsp"/></td>
  </tr>
  
  <tr>
    <td>Image</td>
    <td>user</td>
  </tr>
  <%
  try
  {
  	ResultSet rs=show.show(email);
  	while(rs.next())
  	{
  		String user=rs.getString(1);
  		String image=rs.getString(2);
   %>
  <tr>
    <td valign="bottom" height="75%"><img src="upload_files/<%=image%>" width="60" height="60" > <a href="upload_files/<%=image%>"><%=image%></a></td>
    <td valign="bottom" height="75%"><%=user %> | <a href="down?file=<%=image %>">download</a></td>
  </tr>
  <%
  }
  }
  catch(Exception e)
  {
  	System.out.println("show jsp : "+e);
  }
   %>
   
   
</table>
    
  </body>
</html>
