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
@WebServlet(urlPatterns = {"/Add_Service"})
public class Add_Service extends HttpServlet {

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
         String id=request.getParameter("id");
         String C_Name=request.getParameter("name");
        String S_Name=request.getParameter("S_Name");
        String S_Des=request.getParameter("Desc");
        String Amount=request.getParameter("Amount");
        DbConnection db=new DbConnection();
        int id1=Integer.parseInt(id);
        int amount1=Integer.parseInt(Amount);
        String query="Select * from provider_services where Care_Id='"+id1+"' and Service_name='"+S_Name+"'";
        String query1="insert into provider_services values('"+id1+"','"+C_Name+"','"+S_Name+"','"+S_Des+"','"+amount1+"','"+0+"') ";
        ResultSet rs=db.Select(query);
            try {
                if(rs.next())
                { 
                    session.setAttribute("msg","Service Already Exit");
                    response.sendRedirect("Services.jsp");
                }
                else
                {
                    int i=db.Insert(query1);
                    if(i>0)
                    {
                         session.setAttribute("msg","Service Successfully Added");
                    response.sendRedirect("Services.jsp");
                    }
                }
            } catch (SQLException ex) {
               out.println(ex);
            }
          
        
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
