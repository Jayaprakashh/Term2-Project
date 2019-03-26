<%-- 
    Document   : user
    Created on : Mar 22, 2019, 5:33:19 PM
    Author     : jaya
--%>

<%@page import="POJO.vendorBean"%>
<%@page import="DAO.EmpDao"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <body>
               <% //In case, if Editor session is not set, redirect to Login page
if((request.getSession(false).getAttribute("User")== null) )
{
%>
<jsp:forward page="Login.jsp"></jsp:forward>
<%} %>
<body>
<center><h2>User's Home</h2></center>
 
Welcome <%=request.getAttribute("userName") %>
 
<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>
  
<br></br>
<title>User Call.Page</title>
    </head>
    <body>
        
        <a href="hrcallletter.jsp">Search Skill</a <br><br>
      
    </body>
</html>
 