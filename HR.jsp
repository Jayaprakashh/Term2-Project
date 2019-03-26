<%-- 
    Document   : HR
    Created on : Mar 17, 2019, 4:16:47 PM
    Author     : jaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HR.Page</title>
    </head>
    <body>
         <% //In case, if Editor session is not set, redirect to Login page
if((request.getSession(false).getAttribute("HR")== null) )
{
%>
<jsp:forward page="Login.jsp"></jsp:forward>
<%} %>
<body>
<center><h2>HR's Home</h2></center>
 
Welcome <%=request.getAttribute("userName") %>
 
<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>

 <a href="ViewServlet">Candidate Details </a><br><br>
 <a href="ApproveReport.jsp">Approve Details</a><br><br>
 <a href="hrsearchskill.jsp">Search Skill</a <br><br>
<br></br>

<form action="addDetail.jsp">
    <input type="hidden" name="vname" value="<%=request.getAttribute("userName")%>"/>
    <input type="submit" value="Add JOB Description"/>
</form>
    

 
</body>
</html>
