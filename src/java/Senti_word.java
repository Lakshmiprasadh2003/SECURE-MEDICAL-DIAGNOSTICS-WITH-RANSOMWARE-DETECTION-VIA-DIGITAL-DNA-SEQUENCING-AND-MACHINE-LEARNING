/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DbConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Chitraa
 */
@WebServlet(urlPatterns = {"/Senti_word"})
public class Senti_word extends HttpServlet {

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
         String hos=request.getParameter("count");
         String p_id=(String)session.getAttribute("B_id");
            DbConnection db=new DbConnection();
           ResultSet ts2=db.Select("Select * from provider_doctors where Care_Id='"+p_id+"' and Hos_Name='"+hos+"'");
                               StringBuffer sb=new StringBuffer();
                                  
                                   
                                        sb.append("<br><h4>DOCTOR DETAILS</h4><br>");
                                          sb.append("<table border=2>");
                                              sb.append("<select name=Doctor onchange=showState1(this.value)><option value=\"1\">Doctor Name</option>");
            try {
                while(ts2.next())
                {
                     sb.append("<option value="+ts2.getInt("S_No")+">"+ts2.getString("D_Name")+"</option>");
                }
            } catch (SQLException ex) {
                Logger.getLogger(Senti_word.class.getName()).log(Level.SEVERE, null, ex);
            }
                                        
                                       sb.append("</select></td></tr></table>");
                                       response.getWriter().println(sb.toString());
        } finally {            
          
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
