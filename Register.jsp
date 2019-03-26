 <pre><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@page import="java.util.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<script> 
function validate()
{ 
 var fullname = document.form.fullname.value;
 var email = document.form.email.value;
 var username = document.form.username.value; 
 var password = document.form.password.value;
 var city = document.form.city.value;
 var gendar = document.form.gendar.value;
 
 
 if (fullname==null || fullname=="")
 { 
 alert("Full Name can't be blank"); 
 return false; 
 }
 else if (email==null || email=="")
 { 
 alert("Email can't be blank"); 
 return false; 
 }
 else if (username==null || username=="")
 { 
 alert("Username can't be blank"); 
 return false; 
 }
 else if(password.length<6)
 { 
 alert("Password must be at least 6 characters long."); 
 return false; 
 } 
 else if (city==null || city=="")
 { 
 alert("city can't be blank"); 
 return false; 
 }
 else if (pin==null || pin=="")
 { 
 alert("pin can't be blank"); 
 return false; 
  } 
}
</script> 
</head>
<body>
<center><h2> Registration Application </h2></center>
<form name="form" action="./RegisterServlet" method="get" onsubmit="return validate()">
<table align="center">
 <tr>
 <td>Customer Name :</td>
 <td><input type="text" name="fullname" /></td>
 <td><font color="red">${errMessage.fullname}</font></td>
 </tr>
 
 <tr>
 <td>Customer Address :</td>
 <td><input type="text" name="address" /></td>
 <td><font color="red">${errMessage.address}</font></td>>
 </tr>
 
  <tr>
 <td>Customer Qualification :</td>
 <td><input type="text" name="qualification" /></td>
 <td><font color="red">${errMessage.qualification}</font></td>
 </tr>
 <tr>
 <td> Age :</td>
 <td><input type="text" name="age" value="0" /></td>
 <td><font color="red">${errMessage.age}</font></td>
 </tr>
 <tr>
 <td>Email :</td>
 <td><input type="text" name="email" /></td>
 <td><font color="red">${errMessage.email}</font></td>
 </tr>
 <tr>
 <td>Username :</td>
 <td><input type="text" name="username" /></td>
 <td><font color="red">${errMessage.username}</font></td>
 </tr>
 <tr>
 <td>Password :</td>
 <td><input type="password" name="password" /></td>
 <td><font color="red">${errMessage.password}</font></td>
 </tr>
 <tr>
 <td>city :</td>
 <td><input type="text" name="city" /></td>
 <td><font color="red">${errMessage.city}</font></td>
 </tr>
 <td>Skill :</td>
 <td><input type="text" name="skill" /></td>
 <td><font color="red">${errMessage.skill}</font></td>
 </tr>
  
 
  <tr>
 <td></td>
 <td><input type="submit" value="Register"></input><input
 type="reset" value="Reset"></input></td>
 </tr>
</table>
</form>
 
</body>
</html>