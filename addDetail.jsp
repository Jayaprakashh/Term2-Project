<%-- 
    Document   : addDetail
    Created on : Mar 21, 2019, 4:03:02 PM
    Author     : jaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vendor. Page</title>
    </head>
    
    Welcome : ${param.vname}<br>
    <body>
        <form action="registerVendor">
            <input type="hidden" name="vname" value="${param.vname}"/>
            Add Description : <input type="text" name="adddesc"/><br>
            Skills Needed   : <input type="text" name="skills"/><br>
                    <input type="submit" value="send to Admin">
        </form>
    </body>
</html>
