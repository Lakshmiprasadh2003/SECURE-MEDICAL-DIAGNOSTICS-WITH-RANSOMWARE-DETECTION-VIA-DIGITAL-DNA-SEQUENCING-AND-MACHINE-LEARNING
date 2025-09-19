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
@WebServlet(urlPatterns = {"/Senti_word1"})
public class Senti_word1 extends HttpServlet {

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
            System.out.println("Select * from provider_doctors where Care_Id='"+p_id+"' and Hos_Name='"+hos+"'");
           ResultSet ts2=db.Select("Select * from provider_doctors where Care_Id='"+p_id+"' and S_No='"+hos+"'");
                               StringBuffer sb=new StringBuffer();
                                  
                                   
                                        sb.append("<br><h4>SERVICE DETAILS</h4><br>");
                                          sb.append("<table border=2>");
                                              sb.append("<tr><th>S_No</th><th>Doctor Name</th><th>Doctor Description</th><th>Contact</th><th>Select</th>\n" +
"                                              </tr> ");
            try {
                while(ts2.next())
                {
                     sb.append("<tr><td>"+ts2.getInt("S_No")+"</td>\n" +
"                                           <td>"+ts2.getString("D_Name")+"</td>\n" +
"                                           <td>"+ts2.getString("D_Details")+"</td>\n" +
"                                          <td>"+ts2.getString("Contact")+"</td>\n" +
"                                          <td><input type=\"radio\" name=\"Service\" value="+ts2.getString("D_Details")+">Select Here</td>");
                }
            } catch (SQLException ex) {
               System.out.println(ex);
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
