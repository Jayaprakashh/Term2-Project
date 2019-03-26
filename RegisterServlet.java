 package Controller;

import DAO.EmpDao;
import POJO.RegisterBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 import java.util.HashMap;
import java.util.Map;

 
public class RegisterServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException,NumberFormatException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
            
 String fullname = request.getParameter("fullname");
 String address = request.getParameter("address");
 String qualification = request.getParameter("qualification");
 int age =Integer.parseInt(request.getParameter("age"));
 String email = request.getParameter("email");
 String userName = request.getParameter("username");
 String password = request.getParameter("password");
 String city = request.getParameter("city");
 String skill = request.getParameter("skill");
 
            System.out.println("values set-------------");
 RegisterBean registerBean = new RegisterBean();
 //Using Java Beans - An easiest way to play with group of related data
 registerBean.setFullName(fullname);
 registerBean.setAddress(address);
 registerBean.setQualification(qualification); 
 registerBean.setAge(age);
 registerBean.setEmail(email);
 registerBean.setUserName(userName);
 registerBean.setPassword(password); 
 registerBean.setCity(city); 
 registerBean.setSkill(skill);
 
 Map errMessage=new HashMap();
 
                if(fullname.equals(""))
			errMessage.put("fullname", "Name Field can't be empty");
	        else if(!(fullname.matches("[a-zA-Z]+")))
	 	errMessage.put("fullname", "Name Field contains only Characters");
		
		//if(dob.equals(""))
		//	errorMsg.put("dob", "DOB Fields can't be empty");
		
		if(address.equals(""))
			errMessage.put("address","Address Fields can't be empty");
                
		if(qualification.equals(""))
			errMessage.put("qualification","Qualification Fields can't be empty");
		 
                if(age==0)
			errMessage.put("age","Age Fields can't be empty");
                
		if(email.equals(""))
			errMessage.put("email", "Mail Fields can't be empty");
		else if(!(email.matches("\\S{5,}@((gmail)|(yahoo))\\.com")))
			errMessage.put("email", "Mail Format is incorrect minimum 5 characters");
                
		if(userName.equals(""))
			errMessage.put("username","UserName Fields can't be empty");
		
                if(password.equals(""))
			errMessage.put("password","Password Fields can't be empty");
		else if(!(password.matches("[a-zA-Z0-9]{5,}")))
			errMessage.put("password","Password should contain atleast 5 characters");
		
                if(city.equals(""))
			errMessage.put("city","city Fields can't be empty");
                
                if(skill.equals(""))
			errMessage.put("skill","skill Fields can't be empty");
		//(mobile_no.equals(""))
		//	errorMsg.put("mobile", "Mobile No can't be empty");
		//else if(!(mobile_no.matches("[987]\\d{9}")))
		//	errorMsg.put("mobile","Mobile Number should begins with 9 or 8 or 7 and contain 10 characters");
		
		//if(doj.equals(""))
		//	errorMsg.put("doj", "DOJ Fields can't be empty");
		//Long phone_no;  
 
 
            System.out.println("========"+errMessage.isEmpty()+"----"+errMessage);
 if(errMessage.isEmpty())
		{
                    EmpDao registerDao = new EmpDao();

 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
 String userRegistered = registerDao.registerUser(registerBean);
                    System.out.println("-------------"+userRegistered);
 if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
 {
 request.getRequestDispatcher("/Home.jsp").forward(request, response);
 }
 else   //On Failure, display a meaningful message to the User.
 {
 //request.setAttribute("errMessage", errMessage);
     System.out.println(age);
     out.println("Server Problem!!");
 request.getRequestDispatcher("/Register.jsp").include(request, response);
 } 
                }
 else
 {
     request.setAttribute("errMessage",errMessage);
     request.getRequestDispatcher("/Register.jsp").include(request, response);
 }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
