<%-- 
    Document   : Admin
    Created on : Mar 17, 2019, 4:15:26 PM
    Author     : jaya
--%>

<%@page import="java.util.List"%>
<%@page import="DAO.EmpDao"%>
<%@page import="POJO.vendorBean"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin.Page</title>
    </head>
    <body>
       <% //In case, if Admin session is not set, redirect to Login page
if((request.getSession(false).getAttribute("Admin")== null) )
{
%>
<jsp:forward page="Login.jsp"></jsp:forward>
<%} %>
<body>

<a href="EmployeeView.jsp">Customer Report</a>  
<center><h2>Admin's Home</h2></center>
 
Welcome <%=request.getAttribute("userName") %>
 
<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div
 
<h3>
    <center>Notification!!!</center>
</h3>
 <%  
List<vendorBean> list=EmpDao.getAllVendorr();
request.setAttribute("list",list);  
 
%>  

<table border="1" width="90%">  
<tr><th>Vendor Name</th><th>Skills</th><th>Description</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getVname()}</td><td>${u.getSkills()}</td><td>${u.getAdddesc()}</td>  
</tr>  
</c:forEach>  
</table>  


<form action="search.jsp">
    <input type="submit" value="Assign Candidate"/>
</form>


 
</body>
</html>
