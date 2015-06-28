<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
@import "css/flora.datepick.css";


</style>


<script language="JavaScript" type="text/javascript">
function formcheck(register)
{

if (register.user.value == "")
  {
    alert("Please enter a value for the user name field.");
    register.user.focus();
    return (false);
  }
  
  
  
  if (register.pass.value == "")
  {
    alert("Please enter a value for the password field.");
    register.pass.focus();
    return (false);
  }
  
  
  
  if (register.pass.value.length < 6)
  {
    alert("minimum password length is 6 digit");
    register.pass.focus();
    return (false);
  }
  
   var checkOK1 = "0123456789";
   var checkOK2 ="!@#$^&*";
   var checkOK3 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
   var checkOK4= "abcdefghijklmnopqrstuvwxyz"
   
  var checkStr = register.pass.value;
  var allValid = true;

  for (i = 0;  i < checkStr.length;  i++)
  {
    ch = checkStr.charAt(i);
    for (j = 0;  j < checkOK1.length;  j++)
      if (ch == checkOK1.charAt(j))
        break;
    if (j == checkOK1.length)
    {
   
      allValid = false;
      break;
    }
}    
    for (i = 0;  i < checkStr.length;  i++)
  {
    ch = checkStr.charAt(i);
    for (j = 0;  j < checkOK2.length;  j++)
      if (ch == checkOK2.charAt(j))
        break;
    if (j == checkOK2.length)
    {
   //  alert("your password should contain numeric, alphabets small and capital \n special character !@#$^&* \n one each");
      allValid = false;
      break;
    }
 }
    
    for (i = 0;  i < checkStr.length;  i++)
  {
    ch = checkStr.charAt(i);
    for (j = 0;  j < checkOK3.length;  j++)
      if (ch == checkOK3.charAt(j))
        break;
    if (j == checkOK3.length)
    {
//     alert("your password should contain numeric, alphabets small and capital \n special character !@#$^&* \n one each");
      allValid = false;
      break;
    }
  }
  
    
    for (i = 0;  i < checkStr.length;  i++)
  {
    ch = checkStr.charAt(i);
    for (j = 0;  j < checkOK4.length;  j++)
      if (ch == checkOK4.charAt(j))
        break;
    if (j == checkOK4.length)
    {
  //   alert("your password should contain numeric, alphabets small and capital \n special character !@#$^&* \n one each");
      allValid = false;
      break;
    }
  }
  
 if(!allValid)
 {
  alert("your password should contain numeric, alphabets small and capital \n special character !@#$^&* \n one each");
  return(false);
 } 
 
  
  var p1 = register.pass.value;
  var p2 = register.pass1.value;
  
  if(p1.lenght==p2.length)
  {
   for (i = 0;  i < p1.length;  i++)
  {
    ch1 = p1.charAt(i);
    ch2 =p2.charAt(i);
    
    if(ch1!=ch2)
    {
      return(false);
    }
     if(i==p1.length)
     {
     break;
     }
   }
   return(false);    
  }



  
  if (register.addr.value == "")
  {
    alert("Please enter a value for the address field.");
    register.addr.focus();
    return (false);
  }
  
  
  if (register.mob.value == "")
  {
    alert("Please enter a value for the Mobile Number field.");
    register.mob.focus();
    return (false);
  }
  
  
   if (register.mob.value.length <= 9)
  {
    alert("Please enter a valid Mobile Number.");
    resister.mob.focus();
    return (false);
  }	

  
  
  var check = "0123456789";
  var Str = register.mob.value;
  
  
   for (i = 0;  i < Str.length;  i++)
  {
    ch = Str.charAt(i);
    for (j = 0;  j < check.length;  j++)
      if (ch == check.charAt(j))
        break;
    if (j == check.length)
    {
     alert("please enter valid mobile number :");
     register.mob.focus();
      
     return(false); 
    }
  }
  
   if (register.dob.value == "")
  {
    alert("Please enter a value for the date of birth field.");
    register.dob.focus();
    return (false);
  }
  

return(true);
</script>

<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
<script type="text/javascript" src="js/jquery.datepick.js"></script>
<script type="text/javascript">
$(function() {
	$('#popupDatepicker').datepick();

});
</script>

<title>Register</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String email=request.getParameter("email");
System .out.println("------->>>>  "+email);
 %>
<form action="Register1.jsp" method="post" onsubmit="return formcheck(this)" name="register" language="JavaScript">
<table width="100%"  border="0" cellspacing="0">
  <tr>
    <td colspan="6"></td>
    </tr>
     <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="4%">&nbsp;</td>
    <td width="26%">&nbsp;</td>
    <td width="24%">&nbsp;</td>
    <td width="38%">&nbsp;</td>
    <td width="4%">&nbsp;</td>
    <td width="4%">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>user name* </td>
    <td><input name="user" type="text" size="30">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>password*</td>
    <td><input type="password" name="pass" size="30">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>confirm password* </td>
    <td><input name="pass1" type="password" size="30">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>Email</td>
    <td><input name="email" value="<%=email%>" type="text" readonly="true" size="30"></td>
    <td><input type="hidden" name="email" value="<%=email%>"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td valign="bottom">Adddress*</td>
    <td valign="middle"><textarea name="addr" cols="25" rows="5"></textarea>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>My Mobile Number* </td>
    <td><input name="mob" type="text" size="30">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>I am Born on*</td>
    <td><input type="text" id="popupDatepicker" name="dob" size="30"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>I Am* </td>
    <td>male &nbsp;&nbsp; 
      <input name="gender" type="radio" value="male"> <br/>
      female <input name="gender" type="radio" value="female"><br/> 
      other &nbsp; <input name="other" type="radio" value="other"> </td><br/>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><input name="" type="submit" value="Register">&nbsp;&nbsp;<input type="reset" value="clear"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
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
