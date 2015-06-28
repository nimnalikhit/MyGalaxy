<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>verify me</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body >
<jsp:useBean id="mail" class="bean.CheckMailBean" />
<jsp:setProperty name="mail" property="*" />
<%
	mail.sendMail();
 %>
<form action="Register.jsp" method="post">
<table width="100%"  border="0" cellspacing="0">
  <tr>
    <td colspan="6"></td>
    </tr>
  <tr>
    <td width="8%">&nbsp;</td>
    <td width="23%">&nbsp;</td>
    <td width="18%">&nbsp;</td>
    <td width="35%">&nbsp;</td>
    <td width="8%">&nbsp;</td>
    <td width="8%">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>Email</td>
    <td><input type="text" name="email" size="50"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>Verify Code </td>
    <td><input name="verify" type="text" size="50">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><input type="submit" name="Submit" value="Check"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

 
  <tr>
    <td colspan="6"></td>
    </tr>
</table>


</form>
</body>
</html>
