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
@WebServlet(urlPatterns = {"/Add_Symptom"})
public class Add_Symptom extends HttpServlet {

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
        

        String id1=request.getParameter("id1");
        String name=request.getParameter("name");
        String H_id=request.getParameter("H_id");
        String D_id=request.getParameter("D_id");
        String Sysm=request.getParameter("Sysm");
        int id11=Integer.parseInt(id1);
     int H_Id1=Integer.parseInt(H_id);
                int D_Id1=Integer.parseInt(D_id);
                    
        DbConnection db=new DbConnection();
        
        String Status1="0";
        String Status2="0";
        String pass="0";
      //  String query="Select * from booking_service where U_ID='"+id+"' and U_Name='"+name+"'";
        String query1="insert into user_treatment values('"+0+"','"+id11+"','"+name+"','"+H_Id1+"','"+D_Id1+"','"+Sysm+"','"+pass+"','"+Status1+"','"+Status2+"') ";
        
    
            try {
           
                    int i=db.Insert(query1);
                    if(i>0)
                    {
                         session.setAttribute("msg"," Details Send To Doctor");
                    response.sendRedirect("User_Counsel_Home.jsp");
                    }
                
            } catch (Exception ex) {
               out.println(ex);
            }
          
        
        }  finally {            
          
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
