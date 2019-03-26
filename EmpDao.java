 

package DAO;

import DBConnection.DBConnection;
import POJO.RegisterBean;
import POJO.vendorBean;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

 
public class EmpDao {
    
 public String registerUser(RegisterBean registerBean)
 {
 
 String fullName = registerBean.getFullName();
 String address=registerBean.getAddress();
 String qualification=registerBean.getQualification();
 int age= registerBean.getAge() ;
 String email = registerBean.getEmail();
 String userName = registerBean.getUserName();
 String password = registerBean.getPassword();
 String city=registerBean.getCity();
 String skill=registerBean.getSkill();
 
 Connection con = null;
 PreparedStatement preparedStatement = null;
 
 try
 {
 con = DBConnection.createConnection();
 String query = "insert into userr(fullname,address,qualification,age,email,username,password,city,skill) values (?,?,?,?,?,?,?,?,?)"; //Insert user details into the table 'USERS'
 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
 preparedStatement.setString(1, fullName);
 preparedStatement.setString(2, address);
 preparedStatement.setString(3, qualification);
 preparedStatement.setInt(4, age);
 preparedStatement.setString(5, email);
 preparedStatement.setString(6, userName);
 preparedStatement.setString(7, password);
 preparedStatement.setString(8, city);
 preparedStatement.setString(9, skill); 
 
 int i= preparedStatement.executeUpdate();
 
 if (i!=0)  //Just to ensure data has been inserted into the database
 return "SUCCESS"; 
 }
 catch(SQLException e)
 {
     System.out.println(e);
     
 //e.printStackTrace();
 }
 
 return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
 }
 
  public String registerVendor(vendorBean vb)
 {
     
     String vname=vb.getVname();
     String adddesc=vb.getAdddesc();
     String skills=vb.getSkills();
      
     
     Connection con = null;
 PreparedStatement preparedStatement = null;
 
 try
 {
 con = DBConnection.createConnection();
 String query1 = "insert into vendorr values (?,?,?)"; //Insert user details into the table 'USERS'
 preparedStatement = con.prepareStatement(query1); //Making use of prepared statements here to insert bunch of data
 preparedStatement.setString(1, vname);
 preparedStatement.setString(2, skills);
 preparedStatement.setString(3, adddesc);
  
 
 
 int i= preparedStatement.executeUpdate();
 
 if (i!=0)  //Just to ensure data has been inserted into the database
 return "SUCCESS"; 
 }
 catch(SQLException e)
 {
     System.out.println(e);
     
 //e.printStackTrace();
 }
     
     return "Oops.. Something went wrong there..!";
 
 }
 
 public static int update(RegisterBean e){  
        int status=0;  
        try{  
            Connection con=DBConnection.createConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "update userr set fullname=?,address=?,qualification=?,age=?,username=?,password=?,city=?,skill=? where email=?");  
          
           //update userr set skill=? where email=?
            ps.setString(1,e.getFullName());
            ps.setString(2, e.getAddress());
            ps.setString(3,e.getQualification());
            ps.setInt(4,e.getAge());
            ps.setString(5,e.getUserName());
            ps.setString(6,e.getPassword());
            ps.setString(7,e.getCity());  
            ps.setString(8,e.getSkill());
            ps.setString(9,e.getEmail());
              
                
                        
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }  
 
 public static int approveupdate(RegisterBean e){  
        int status=0;  
        try{  
            Connection con=DBConnection.createConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "update userr set fullname=?,address=?,qualification=?,age=?,username=?,password=?,city=?,skill=?,role=?,status=? where email=?");  
          
           //update userr set skill=? where email=?
            ps.setString(1,e.getFullName());
            ps.setString(2, e.getAddress());
            ps.setString(3,e.getQualification());
            ps.setInt(4,e.getAge());
            ps.setString(5,e.getUserName());
            ps.setString(6,e.getPassword());
            ps.setString(7,e.getCity());  
            ps.setString(8,e.getSkill());
            ps.setString(9,e.getRole());
            ps.setString(10,e.getStatus());
            ps.setString(11,e.getEmail());
            
                
                        
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }  
    public static int delete(String email){  
        int status=0;  
        try{  
         Connection con = DBConnection.createConnection();
            PreparedStatement ps=con.prepareStatement("delete from userr where email=?");  
            ps.setString(1, email);
            status=ps.executeUpdate();  
              
            con.close(); 
        }catch(Exception e){e.printStackTrace();}  
          
        return status;  
    }  
    public static RegisterBean getEmployeeByEmail(String mail)
    {
            RegisterBean e=new RegisterBean();  
         try{  
            Connection con=DBConnection.createConnection();
            PreparedStatement ps=con.prepareStatement("select * from userr where email=?");
            ps.setString(1, mail);
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){
                
           
                e.setFullName(rs.getString(1));  
                e.setAddress(rs.getString(2));  
                e.setQualification(rs.getString(3));  
                e.setAge(rs.getInt(4));  
                e.setEmail(rs.getString(5));
                e.setUserName(rs.getString(6));
                e.setPassword(rs.getString(7));
                e.setCity(rs.getString(8));  
                e.setSkill(rs.getString(9));
                e.setRole(rs.getString(10));
                e.setStatus(rs.getString(11));
                 
            }  
            con.close();  
        }catch(Exception e1){e1.printStackTrace();}  
         
         return e;
    }
    public static RegisterBean getEmployeeById(int id){  
        RegisterBean e=new RegisterBean();  
          
        try{  
            /*
            Connection con=EmpDao.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from user905 where id=?");  
            ps.setInt(1,id);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
                e.setId(rs.getInt(1));  
                e.setName(rs.getString(2));  
                e.setPassword(rs.getString(3));  
                e.setEmail(rs.getString(4));  
                e.setCountry(rs.getString(5));  
            }  
            con.close();*/  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return e;  
    }  
    public static List<RegisterBean> getAllEmployees(){  
        
        List<RegisterBean> list=new ArrayList<RegisterBean>();  
          
        try{  
            Connection con=DBConnection.createConnection();
            PreparedStatement ps=con.prepareStatement("select * from userr");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){
                
               RegisterBean e=new RegisterBean();  
                e.setFullName(rs.getString(1));  
                e.setAddress(rs.getString(2));  
                e.setQualification(rs.getString(3));  
                e.setAge(rs.getInt(4));  
                e.setEmail(rs.getString(5));
                e.setUserName(rs.getString(6));
                e.setPassword(rs.getString(7));
                e.setCity(rs.getString(8));
                e.setSkill(rs.getString(9));
                e.setRole(rs.getString(10));
                e.setStatus(rs.getString(11));
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    } 
 
     public static List<vendorBean> getAllVendor(){  
        
        List<vendorBean> list=new ArrayList<vendorBean>();  
          
        try{  
            Connection con=DBConnection.createConnection();
            PreparedStatement ps=con.prepareStatement("select * from vendor");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){
                
              vendorBean vb=new vendorBean();
              vb.setVname(rs.getString(1));
              vb.setSkills(rs.getString(2));
              vb.setAdddesc(rs.getString(3));
              vb.setDate(rs.getDate(4));
                list.add(vb);  
            }  
            con.close(); 
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    } 
     public static List<vendorBean> getAllVendorr(){  
        
        List<vendorBean> list=new ArrayList<vendorBean>();  
          
        try{  
            Connection con=DBConnection.createConnection();
            PreparedStatement ps=con.prepareStatement("select * from vendorr");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){
                
              vendorBean vb=new vendorBean();
              vb.setVname(rs.getString(1));
              vb.setSkills(rs.getString(2));
              vb.setAdddesc(rs.getString(3));
              //vb.setDate(rs.getDate(4));
                list.add(vb);  
            }  
            con.close(); 
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    } 
     
     
     
       public static List<RegisterBean> getEmployeeBySkill(String skill)
    {
            RegisterBean e=new RegisterBean();  
            List<RegisterBean> list=new ArrayList<RegisterBean>(); 
         try{  
            Connection con=DBConnection.createConnection();
            PreparedStatement ps=con.prepareStatement("select * from userr where skill=?");
            ps.setString(1, skill);
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){
                
           
                e.setFullName(rs.getString(1));  
                e.setAddress(rs.getString(2));  
                e.setQualification(rs.getString(3));  
                e.setAge(rs.getInt(4));  
                e.setEmail(rs.getString(5));
                e.setUserName(rs.getString(6));
                e.setPassword(rs.getString(7));
                e.setCity(rs.getString(8));  
                e.setSkill(rs.getString(9));
                list.add(e); 
            }  
            con.close();  
        }catch(Exception e1){e1.printStackTrace();}  
         
         return list;
    }
}
