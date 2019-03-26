<%-- 
    Document   : Home
    Created on : Aug 13, 2018, 10:15:29 AM
    Author     : 00b91
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home.Page</title>
    </head>
    <head>     
    <div style="text-align: center"><a href="Login.jsp">Login</a></div>
    <div style="text-align: center"><a href="Register.jsp">Register</a></div>
    
    </head>
    <body bgcolor="lightblue">
         <center><h2>Online Web Customer Portal </h2></center>
         <form action="viewCustomer" method="post"/>
         <br><br>
 
  

<br><br>
 
 Welcome <%=request.getAttribute("userName") %> <!-- Refer to the video to understand how this works -->
 <div style="text-align: right"><a href="LogoutServlet">Logout</a></div>
    </body>
</html>
