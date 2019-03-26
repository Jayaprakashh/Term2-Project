/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBConnection.DBConnection;
import POJO.LoginBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

 
public class LoginDao {
    
    public String authenticateUser(LoginBean loginBean)
{
String userName = loginBean.getUserName();
String password = loginBean.getPassword();

Connection con = null;
Statement statement = null;
ResultSet resultSet = null;
String userNameDB = "";
String passwordDB = "";
String roleDB = "";
try
{
con = DBConnection.createConnection();
statement = con.createStatement();
resultSet = statement.executeQuery("select email,password,role from userr");

while(resultSet.next())
{
userNameDB = resultSet.getString("email");
passwordDB = resultSet.getString("password");
roleDB = resultSet.getString("role");

if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Admin"))
{return "Admin_Role";}
else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Vendor"))
{return "HR_Role";}
else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("user"))
{return "User_Role";}
}
}
catch(SQLException e)
{
e.printStackTrace();
}
return "Invalid user credentials";
}
}
