
<%@page import="connection.ConnectionProvider,java.sql.*"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>main left</title>
</head>

<body>

<jsp:useBean id="pic" class="bean.MainInfoBean"/>
<%
String email=(String)session.getAttribute("email");
String pi=pic.getPhoto(email);
String picc="images/"+pi;
 %>

<table width="100%" border="0" cellspacing="4" cellpadding="1">
  <tr>
    <td height="30%"><img src="<%=picc%>" height="120" width="100" /></td>
  </tr>
  <tr>
    <td><%="Welcome - "+email%>&nbsp;</td>
  </tr>
  <tr>
    <td height="5%"><br /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="5%"><a href="mygalaxy.jsp">Wall<br /></a></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="5%"><a href="editreal.jsp">Edit Info<br /></a></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="5%"><a href="friendlist2.jsp">Friends<br /></a></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="5%"><a href="editreal.jsp">Scraps</a></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><a href="gallery.jsp">Photos</a></td>
  </tr>
</table>

</body>
</html>
