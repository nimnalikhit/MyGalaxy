<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Forgot password.???</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
 <body>

<form action="forgot1.jsp" method="get">
<table width="100%" border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td colspan="2" height="13%">&nbsp;</td>
  </tr>
  <tr>
  <td height="20%">
  </td>
  </tr>
  <tr>
    <td width="34%">&nbsp;</td>
    <td width="66%" height="10%"><input name="email" class="input" value="Existing email account..." onfocus="if (this.value=='Existing email account...')this.value='';" onblur="if (this.value=='') this.value=' Existing email account...'" type="text"><br/></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="20%" ><input name="forgot" type="image" src="images/forgot.png" alt="cLIck Me" width="150" /></td>
  </tr>
  <tr>
  <td height="40%">
  </td>
  </tr>
  <tr>
    <td colspan="2" height="12%"><jsp:include page="footer.jsp" /></td>
  </tr>
</table>
</form>

</body>
</html>
