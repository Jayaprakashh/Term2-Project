<%-- 
    Document   : hrsearchskill
    Created on : Mar 24, 2019, 9:36:27 PM
    Author     : jaya
--%>
<%@page import="DAO.EmpDao,POJO.RegisterBean,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div
 
       <%@include file="hrsearch.jsp" %>
       
<%  
List<RegisterBean> list=EmpDao.getEmployeeBySkill(request.getParameter("search_data"));
request.setAttribute("list",list);  
%>  

<table border="1" width="90%">  
<tr><th>FullName</th><th>Address</th><th>Qualification</th><th>Age</th>  
<th>Email</th><th>Username</th><th>Password</th><th>City</th><th>Skill</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getFullName()}</td><td>${u.getAddress()}</td><td>${u.getQualification()}</td>  
<td>${u.getAge()}</td><td>${u.getEmail()}</td><td>${u.getUserName()}</td> <td>${u.getPassword()}</td><td>${u.getCity()}</td><td>${u.getSkill()}</td>  
 
</c:forEach>  
</table> 
    </body>
</html>
