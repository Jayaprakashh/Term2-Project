<%-- 
    Document   : hrcallletter
    Created on : Mar 26, 2019, 10:45:25 PM
    Author     : jaya
--%>

<%@page import="POJO.vendorBean"%>
<%@page import="java.util.List"%>
<%@page import="DAO.EmpDao"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         
<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>
  
          <h3>
    <center> HR Call Letter</center>
</h3>
        
        
         <h2>
    <center> Date vice Interview Schduling  </center>
</h2>
  
        
        
        
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
