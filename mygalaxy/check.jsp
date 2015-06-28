    <jsp:useBean id="login" class="bean.LoginChkBean"/>
    <jsp:setProperty property="*" name="login"/>
	<%
	if(login.chk())
	{
	String email=login.getEmail();
	session.setAttribute("email",email);
	response.sendRedirect("mygalaxy.jsp"); 
	}
	else
	{
	response.sendRedirect("errlogin.jsp");
	}
%>