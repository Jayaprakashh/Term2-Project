 
package DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnection {
    
 public static Connection createConnection()
 {
 Connection con = null;
 try 
 {
              Context cx=  new InitialContext();
              DataSource ds=  (DataSource)cx.lookup("jdbc/jobwebportal");
              con=  ds.getConnection();
    
  } 
  catch (Exception e) 
  {
   e.printStackTrace();
   }
     return con;
     
  }
}

