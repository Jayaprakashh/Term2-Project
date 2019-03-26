 
package Controller;

import DAO.EmpDao;
import POJO.vendorBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
public class registerVendor extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
            String vname=request.getParameter("vname");
            String adddesc = request.getParameter("adddesc");
            String skills = request.getParameter("skills");
            //Date date = request.getParameter("date");   
             
            vendorBean vb=new vendorBean();
             
            vb.setVname(vname);
            vb.setAdddesc(adddesc);
            vb.setSkills(skills);
          //  vb.setDate(date);
            EmpDao vendorDao = new EmpDao();

 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
 String vendorRegistered = vendorDao.registerVendor(vb);
 
 if(vendorRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
 {
 request.getRequestDispatcher("/Home.jsp").forward(request, response);
 }
                
 else
 {
     request.setAttribute("errMessage",vendorRegistered);
     request.getRequestDispatcher("/registervendor.jsp").include(request, response);
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
