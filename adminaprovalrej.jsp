<%-- 
    Document   : adminaprovalrej
    Created on : Mar 26, 2019, 11:17:02 PM
    Author     : jaya
--%>

<%@page import="POJO.RegisterBean"%>
<%@page import="java.util.List"%>
<%@page import="DAO.EmpDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin. Page</title>
    </head>
    <body>
       <div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div
 
        
        <h1><b>View Approval / Reject</b></h1>
        <br>
        <br>
        <br>
        <br>
         
        <%  
List<RegisterBean> list=EmpDao.getAllEmployees();
request.setAttribute("list",list);  



%>  

<table border="1" width="90%">  
<tr><th>FullName</th><th>Address</th><th>Qualification</th><th>Age</th>  
<th>Email</th><th>Username</th><th>Password</th><th>City</th><th>Skill</th><th>Role</th><th>Status</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getFullName()}</td><td>${u.getAddress()}</td><td>${u.getQualification()}</td>  
<td>${u.getAge()}</td><td>${u.getEmail()}</td><td>${u.getUserName()}</td> <td>${u.getPassword()}</td><td>${u.getCity()}</td><td>${u.getSkill()}</td><td>${u.getRole()}</td>   
 <td>${u.getStatus()}</td></tr>  
</c:forEach>  
</table>  
    </body>
    </body>
</html>
