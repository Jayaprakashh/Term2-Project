<%-- 
    Document   : Approveupdateform
    Created on : Mar 24, 2019, 3:10:43 PM
    Author     : jaya
--%>

<%@page import="DAO.EmpDao"%>
<%@page import="POJO.RegisterBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Approveupdate .Page</title>
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
         String role=request.getParameter("role");
         String status=request.getParameter("status");
         
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
         rr.setRole(role);
         rr.setStatus(status);
         
         EmpDao.approveupdate(rr);
          request.getRequestDispatcher("adminaprovalrej.jsp").include(request, response);
            %>
    </body>
</html>
