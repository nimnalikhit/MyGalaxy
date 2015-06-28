<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Upload Image</title>
</head>

<body background="images/bd.gif">
<table width="100%" border="0" cellspacing="4" cellpadding="1">
  <tr>
    <td colspan="3">&nbsp; <jsp:include page="mainheader.jsp"/></td>
  </tr>
  <tr>
    <td>&nbsp;<jsp:include page="mainleft.jsp"/></td>
    <td colspan="2">&nbsp;
    
<form action="mainupload.jsp" name ="aa" method="post" enctype="multipart/form-data">
upload file <input name="uploadfile" type="file" /><br/>
 <input name="user" type="hidden" value="<%=(String)session.getAttribute("email") %>" /><br/><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="img" type="image" src="images/upload.png" width="150" height="70"/>

</form>
    
    
    
 </td>
    
  </tr>
  <tr>
    <td colspan="3">&nbsp;<jsp:include page="mainfooter.jsp"/></td>
  </tr>
</table>



</body>
</html>
