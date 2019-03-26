<%-- 
    Document   : editform
    Created on : Mar 20, 2019, 2:36:01 PM
    Author     : jaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="DAO.EmpDao,POJO.RegisterBean,java.util.*"%>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit.Page</title>
    </head>
    <%
      RegisterBean rb=  EmpDao.getEmployeeByEmail(request.getParameter("email"));
   //   out.print(rb.getAddress());
      %>
      
    <body >
<center><h2> Registration Application </h2></center>
<form action="updateform.jsp">
<table align="center">
 <tr>
 <td>Customer Name :</td>
 <td><input type="text" name="fullname" value="<%=rb.getFullName()%>"/></td>
 </tr>
 <tr>
 <td>Customer Address :</td>
 <td><input type="text" name="address" value="<%=rb.getAddress()%>"/></td>
 </tr>
  <tr>
 <td>Customer Qualification :</td>
 <td><input type="text" name="qualification" value="<%=rb.getQualification()%>"/></td>
 </tr>
 <tr>
 <td> Age :</td>
 <td><input type="text" name="age" value="<%=rb.getAge()%>"/></td>
 </tr>
 <tr>
 <td>Email</td>
 <td><input type="text" name="email" value="<%=rb.getEmail()%>"/></td>
 </tr>
 <tr>
 <td>Username</td>
 <td><input type="text" name="username" value="<%=rb.getUserName()%>"/></td>
 </tr>
 <tr>
 <td>Password</td>
 <td><input type="password" name="password" value="<%=rb.getPassword()%>"/></td>
 </tr>
 <tr>
 <td>city</td>
 <td><input type="text" name="city" value="<%=rb.getCity()%>" /></td>
 </tr>
<td>Skill</td>
 <td><input type="text" name="skill" value="<%=rb.getSkill()%>" /></td>
 </tr>
  </tr>
 <tr>
 <td></td>
 <td><input type="submit" value="Edit"></input><input
 type="reset" value="Reset"></input></td>
 </tr>
</table>
</form>
 
</body>
</html>
