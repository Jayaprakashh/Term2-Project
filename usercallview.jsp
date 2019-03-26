<%-- 
    Document   : usercallview
    Created on : Mar 24, 2019, 10:49:56 PM
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
        <title>User Call.Page</title>
    </head>
    <body>
        <div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div

        <h3>
    <center> User Call Letter</center>
</h3>
         
 <%  
List<vendorBean> list=EmpDao.getAllVendor();
request.setAttribute("list",list);  
 
%>  

<table border="1" width="90%">  
<tr><th>Vendor Name</th><th>Skills</th><th>Description</th><th>Date</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getVname()}</td><td>${u.getSkills()}</td><td>${u.getAdddesc()}</td><td>${u.getDate()}</td>  
</tr>  
</c:forEach>  
</table>
    </body>
</html>
