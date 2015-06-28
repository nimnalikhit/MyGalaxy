<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <script type="text/javascript">
function registered()
{
alert("Congratulation!! \n you have been sucessfully registered.. \n check Email for Further Details");
}
</script>
   
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  
 <body background="images/bd.gif" onLoad="registered()">
  
  <table height="100%" width="100%" border="0" cellspacing="1" cellpadding="0">
  <tr>
    <td colspan="3" height="33%"><jsp:include page="header.jsp"/></td>
  </tr>
  <tr>
    <td height="30%" width="100%"><jsp:include page="mid.jsp"/></td>
  </tr>
  <tr>
    <td width="60%" height="36%"><jsp:include page="signup.jsp"/></td>
    <td width="40%" height="36%"><jsp:include page="right.jsp"/>
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3" height="14%"><jsp:include page="footer.jsp"/></td>
  </tr>
</table>
  
  
  </body>
</html>
