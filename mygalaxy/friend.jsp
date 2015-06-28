<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>friendship stat</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body> 

<jsp:useBean id="frn" class="bean.FriendshipStat"/>


<%
Boolean frnd=false,rqst=false;
String memail=(String)session.getAttribute("email");
System.out.println("inside friend.jsp my email  "+memail);
String femail=request.getParameter("femail");
System.out.println("inside friend.jsp here i got your email "+femail);

if(memail.equals(femail))
{
response.sendRedirect("myglaxy.jsp");
}
else if(frn.isFriend(memail,femail))
{
%>
<form action="unfriend.jsp" method="get">
<input name="Unfriend" type="submit" value="Unfriend" />
<input name="memail" value="<%=memail %>" type="hidden"/>
<input name="femail" value="<%=femail %>" type="hidden"/>
</form>
<%
}

else if(frn.isRequestSent(memail,femail))
{
%>


<h3><font color="#3300FF" style="font:italic oblique">
Friend Request Sent.
</font></h3>

<%

}

else
{
%>
<form action="sendreq.jsp" method="post">
<input name="Send friend Request" type="submit" value="Send friend Request" />
<input name="memail" value="<%=memail %>" type="hidden"/>
<input name="femail" value="<%=femail %>" type="hidden"/>
</form>
<%
}


 %>

    
  </body>
</html>
