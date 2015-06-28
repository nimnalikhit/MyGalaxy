<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>header1t</title>
<script type="text/javascript">
function wrong()
{
alert("Sorry incorrect password or username");
}
</script>
</head>

<body onload="wrong()">
<form action="check.jsp" method="post">
<table  width="100%" border="0" cellspacing="1" cellpadding="1"  >
  <tr>
    <td width="34%" rowspan="3"><img src="images/mygalaxy.png" width="339" height="48"/></td>
    <td width="13%" rowspan="4"><a href="about.jsp"><img src="images/about1.png" width="114" height="46" onmouseover="this.src='images/about2.png';" onmouseout="this.src='images/about1.png';" /></a>
   <td width="13%" rowspan="3"><a href="contact.jsp"><img src="images/contact1.png" width="114" height="46" onmouseover="this.src='images/contact2.png';" onmouseout="this.src='images/contact1.png';" /></a></td>
    <td width="20%">Email</td>
   <td width="20%">Password <a href="forgot.jsp">(Forget Password)</a></td>
  </tr>
  <tr>
  
    <td width="20%"><input name="email" class="input" value="Email here..." onfocus="if (this.value=='Email here...')this.value='';" onblur="if (this.value=='') this.value='Email here...'" type="text"></td>
    <td width="20%"><input name="pass" class="input" value="Password here.." onfocus="if (this.value=='Password here..')this.value='';" onblur="if (this.value=='') this.value='Password here..'" type="password"></td>
  </tr>
  <tr>
    <td width="20%"><input name="remember" type="checkbox" />Remember me</td>
    <td width="20%"><input name="login" type="image" src="images/login.png" alt="login" /></td>
  </tr>
</table>
</form>


</body>
</html>
