<%@ page language="java" import="java.util.*,bean.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="this is search page">
	

  </head>
  
  
  
  
  <body>


<%@page import="com.oreilly.servlet.*"%>
<jsp:useBean id="upload" class="bean.UploadBean" />

<%
	try
	{
		String path=application.getRealPath("upload_files");
	
		MultipartRequest mr=new MultipartRequest(request,path,1024*1024);
		String fname=mr.getOriginalFileName("uploadfile");
		String uname=mr.getParameter("user");
		upload.setInfo(fname,uname);
		upload.insert();
		
		
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
<br>
<a href="show.jsp">show uploaded image</a>
</body>

</html>