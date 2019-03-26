<%-- 
    Document   : ApproveProfile
    Created on : Mar 23, 2019, 6:08:24 PM
    Author     : jaya
--%>

<%@page import="POJO.RegisterBean"%>
<%@page import="DAO.EmpDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Approve.Form</title>
    </head>
    <body>
        <%
      RegisterBean rb=  EmpDao.getEmployeeByEmail(request.getParameter("email"));
   //   out.print(rb.getAddress());
      %>
      
    <body >
<center><h2>Approve Process</h2></center>
<form action="Approveupdateform.jsp">
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
  <td>role</td>
 <td><input type="text" name="role" value="<%=rb.getRole()%>" /></td>
 </tr>
  </tr>
<td>Status</td>
 <td><input type="text" name="status" value="<%=rb.getStatus()%>" /></td>
 </tr>
  </tr>
  <tr>
 <td></td>
 <td><input type="submit" value="Admin Approve"></input><input
 type="reset" value="Reset"></input></td>
 </tr>
</table>
</form>
 
</body>
    </body>
</html>
