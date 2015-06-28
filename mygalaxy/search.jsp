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
  <table>
  <tr>
  <td width="100%" height="20%"><jsp:include page="mainheader.jsp"/></td>
  </tr>  
  
  <tr>
  <td width="100%" height="60%">
  <jsp:useBean id="srch" class="bean.SearchBean"/>
  <jsp:setProperty property="*" name="srch"/>
  


  <%
  
 
  ArrayList al=srch.searchVal();
  Iterator it=al.iterator();
 System.out.println("array list fetched :"+al);
  System.out.println("Size of Array list is : "+al.size());
  
  
  if(al!=null)
  {
// System.out.println("Size of Array list"+k.size());
 // System.out.println("E mail  : User name : sex "+it);
  %>
  <table border="0" colspan=20>
   <tr colspan=20 >
   <td></td>
   <td></td>
   <td></td>
   <td >NAME</td>
<td></td>
  
   <td>E-MAIL</td>
  <td></td>
   <td></td>
   <td>SEX</td>
   </tr>  
  
 
  
  <%
  
 while(it.hasNext())
 {
 ArrayList k=(ArrayList)it.next();
 String img=(String)k.get(3);
 String pic="images/"+img;
 
 
  %>
   <tr colspan=20 >
  <td><form action="user.jsp" method="get" >
  <input type="hidden" name="femail" value="<%=k.get(1) %>"/>
  <input name="user" type="image" src="<%=pic %>" height="120" width="100"/></form></td>
   <td></td>
   <td></td>
   
   <td><%=k.get(0) %>  </td>
   <td></td>
   <td><%=k.get(1) %></td>
   <td></td>
   <td></td>
   <td><%=k.get(2) %></td>
   </tr>  
 <%
  
   }
   
   }
//   out.println("dat is oll v hav got");
  
   
   %>
   </table>
 </td></tr>
 <tr>
 <td width="100%" height="20%"><jsp:include page="mainfooter.jsp"/>
 </td>
 
 </tr>
 </table>
  </body>
</html>
