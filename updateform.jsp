<%-- 
    Document   : updateform
    Created on : Mar 20, 2019, 2:51:47 PM
    Author     : jaya
--%>

<%@page import="POJO.RegisterBean"%>
<%@page import="DAO.EmpDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User.Page</title>
    </head>
    <body>
        <%
            
         String fullname= request.getParameter("fullname");
         String address=request.getParameter("address");
         String qualification=request.getParameter("qualification");
         int age=Integer.parseInt(request.getParameter("age"));
         String mail=request.getParameter("email");
         String username=request.getParameter("username");
         String password=request.getParameter("password");
         String city=request.getParameter("city");
         String skill=request.getParameter("skill");
         
         RegisterBean rr=new RegisterBean();
         rr.setFullName(fullname);
         rr.setAddress(address);
         rr.setQualification(qualification);
         rr.setAge(age);
         rr.setEmail(mail);
         rr.setUserName(username);
         rr.setPassword(password);
         rr.setCity(city);
         rr.setSkill(skill);
         
         EmpDao.update(rr);
          request.getRequestDispatcher("EmployeeView.jsp").include(request, response);
            %>
    </body>
</html>
