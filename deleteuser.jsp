<%-- 
    Document   : deleteuser
    Created on : Mar 20, 2019, 2:22:42 PM
    Author     : jaya
--%>

<%@page import="DAO.EmpDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>delete.Page</title>
    </head>
    <body>
        <%
            String mail=request.getParameter("email");
            EmpDao.delete(mail);
            request.getRequestDispatcher("EmployeeView.jsp").include(request, response);
            %>
    </body>
</html>
