<%-- 
    Document   : EmployeeView
    Created on : Mar 20, 2019, 5:44:01 AM
    Author     : jaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE h tml>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View.Page</title>
    </head>
    <body>
        <%--<jsp:useBean id="u" class="POJO.RegisterBean" scope="session"></jsp:useBean>
         <jsp:setProperty property="*" name="u"/> 
         
       Customer List :<br>  
         
<jsp:getProperty property="fullName" name="u"/><br>  
<jsp:getProperty property="address" name="u"/><br>  
<jsp:getProperty property="qualification" name="u" /><br>
<jsp:getProperty property="age" name="u" /><br>
<jsp:getProperty property="email" name="u" /><br>
<jsp:getProperty property="userName" name="u" /><br>
<jsp:getProperty property="password" name="u" /><br>
<jsp:getProperty property="city" name="u" /><br> --%>
        
        <%@page import="DAO.EmpDao,POJO.RegisterBean,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    <h1>Customer Report</h1>  
    <a href="Home.jsp">Home Page</a>
    
    <%  
List<RegisterBean> list=EmpDao.getAllEmployees();
request.setAttribute("list",list);  



%>  

<table border="1" width="90%">  
<tr><th>FullName</th><th>Address</th><th>Qulification</th><th>Age</th>  
<th>Email</th><th>Username</th><th>Password</th><th>City</th><th>Skill</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getFullName()}</td><td>${u.getAddress()}</td><td>${u.getQualification()}</td>  
<td>${u.getAge()}</td><td>${u.getEmail()}</td><td>${u.getUserName()}</td> <td>${u.getPassword()}</td><td>${u.getCity()}</td><td>${u.getSkill()}</td>  
<td><a href="editform.jsp?email=${u.getEmail()}">Edit</a></td>  
<td><a href="deleteuser.jsp?email=${u.getEmail()} ">Delete</a></td></tr>  
</c:forEach>  
</table>  

    </body>
</html>
