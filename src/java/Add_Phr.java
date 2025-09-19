/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DbConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mvinoth
 */
@WebServlet(urlPatterns = {"/Add_Phr"})
public class Add_Phr extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       HttpSession session=request.getSession(true);
        try {
String id=request.getParameter("U_Id");
         String U_Name=request.getParameter("U_Name");
        String Date=request.getParameter("inputDate");
        String Surgery=request.getParameter("Surgery");
        String BG=request.getParameter("BG");
         String Age=request.getParameter("Age");
          String Issues=request.getParameter("Issues");
        String BB=request.getParameter("BB");
        String Height=request.getParameter("Height");
        String Weight=request.getParameter("Weight");
         String Quali=request.getParameter("Quali");
        String Prof=request.getParameter("Prof");
         String C_Date=request.getParameter("C_Date");
          String U_Ph=request.getParameter("U_Ph");
    
        
        DbConnection db=new DbConnection();
        int id1=Integer.parseInt(id);
    
        String query1="insert into user_phr_details values('"+0+"','"+U_Name+"','"+id1+"','"+Date+"','"+Quali+"','"+Prof+"','"+Age+"','"+Surgery+"','"+Issues+"','"+BB+"','"+Height+"','"+Weight+"','"+BG+"','"+C_Date+"','"+U_Ph+"') ";
      
                    int i=db.Insert(query1);
                    if(i>0)
                    {
                         session.setAttribute("msg","Add PHR Successfully Added");
                   response.sendRedirect("User_Phr.jsp");
                    }
           
          
        }
       catch(Exception e)
       {
           out.println(e);
       }finally {            
          
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
