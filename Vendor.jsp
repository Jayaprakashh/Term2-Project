<%-- 
    Document   : User
    Created on : Mar 17, 2019, 4:17:36 PM
    Author     : jaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <% //In case, if User session is not set, redirect to Login page.
if((request.getSession(false).getAttribute("User")== null) )
{
%>
<jsp:forward page="Login.jsp"></jsp:forward>
<%} %>
<body>
<center><h2>Vendor's Home</h2></center>
Welcome <%=request.getAttribute("userName") %>
 
<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>
    
<br></br>

<form action="addDetail.jsp">
    <input type="hidden" name="vname" value="<%=request.getAttribute("userName")%>"/>
    <input type="submit" value="Add Description"/>
</form>
</body>
</html>
