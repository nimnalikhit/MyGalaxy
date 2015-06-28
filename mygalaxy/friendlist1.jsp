<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>friend list</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
  
<table width="100%" border="0" cellspacing="4" cellpadding="1">
 
<jsp:useBean id="g" class="bean.GetFriendListBean"/>
<%
String femail=request.getParameter("femail");
ArrayList l=g.small(femail);

Iterator it=l.iterator();
 System.out.println("array list fetched :"+l);
  
  
  if(l!=null)
  {
 
 %>
  <h3 >Friends </h3>
 
 
 
  <% int c=0;
  while(it.hasNext())
  {
  ArrayList k=(ArrayList)it.next();
  String img=(String)k.get(1);
  String pic="images/"+img;
 

 %> 
  
 
 <form action="user.jsp" method="get" >
  <input type="hidden" name="femail" value="<%=k.get(0) %>"/>
  <input name="user" type="image" src="<%=pic %>" height="120" width="100"/></form>
 
 
 <tr>

    <td><%=k.get(2)%></td>
    <td>&nbsp;</td>
   
  </tr>
 
 
 
 <%
  
  }
  %>
  
 </table> 
  <%
  }
   %>
 
  
  
  </body>
</html>
