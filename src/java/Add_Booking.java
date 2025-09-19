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
@WebServlet(urlPatterns = {"/Add_Booking"})
public class Add_Booking extends HttpServlet {

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
             Integer id=(Integer)session.getAttribute("U_Id");
                                    String name=(String)session.getAttribute("User");
                                                     session.setAttribute("U_Id",id);
                     session.setAttribute("User",name);

        String P_Id=request.getParameter("P_Id");
        String H_Id=request.getParameter("H_Id");
        String D_Id=request.getParameter("D_Id");
        String S_Id=request.getParameter("S_Id");
        int P_Id1=Integer.parseInt(P_Id);
            int H_Id1=Integer.parseInt(H_Id);
                int D_Id1=Integer.parseInt(D_Id);
                    int S_Id1=Integer.parseInt(S_Id);
        DbConnection db=new DbConnection();
        
        String Status1="0";
        String pass="0";
        String query="Select * from booking_service where U_ID='"+id+"' and D_ID='"+D_Id+"' and S_ID='"+S_Id+"'";
        String query1="insert into booking_service values('"+0+"','"+id+"','"+name+"','"+P_Id1+"','"+D_Id1+"','"+S_Id1+"','"+H_Id1+"','"+Status1+"','"+pass+"') ";
        
        ResultSet rs=db.Select(query);
            try {
                if(rs.next())
                { 
                    session.setAttribute("msg","Your service is already booked ");
                    response.sendRedirect("Services_Booking.jsp");
                }
                else
                {
                    int i=db.Insert(query1);
                    if(i>0)
                    {
                         session.setAttribute("msg","Services Details Successfully Added");
                    response.sendRedirect("Services_Booking.jsp");
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
