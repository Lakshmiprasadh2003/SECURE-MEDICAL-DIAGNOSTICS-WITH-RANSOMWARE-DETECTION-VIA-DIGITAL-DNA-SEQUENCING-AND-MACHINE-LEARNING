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
 * @author mvinoth
 */
@WebServlet(urlPatterns = {"/register_user"})
public class register_user extends HttpServlet {

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
            String U_Name="",Pass="",AID="",Mail="",Contact="",Addr="",Security="",qu="",pro="",gender="";
            U_Name=request.getParameter("U_Name");
            Pass=request.getParameter("U_Pass");
            AID=request.getParameter("aadhar");
            Mail=request.getParameter("U_Adrr");
            Contact=request.getParameter("U_Ph");
            Addr=request.getParameter("desc");
            Security=request.getParameter("typ");
            qu=request.getParameter("Quali");
            gender=request.getParameter("gender");
            pro=request.getParameter("Prof");
            DbConnection db=new DbConnection();
            String query="Select * from user_registration where U_Name='"+U_Name+"'";
            String query1="insert into user_registration values('"+0+"','"+U_Name+"','"+Pass+"','"+Mail+"','"+Contact+"','"+Addr+"','"+Security+"','"+AID+"','"+gender+"','"+qu+"','"+pro+"')";
            ResultSet rs=db.Select(query);
            if(rs.next())
            {
              session.setAttribute("msg","User Name Already Exist");
              response.sendRedirect("User_Register.jsp");
            }
            else
            {
                int i=db.Insert(query1);
                if(i>0)
                {
                    session.setAttribute("msg","Registration Successfully");
              response.sendRedirect("User_Register.jsp");
                }
                else
                {
                  session.setAttribute("msg","Data Base Error Can't Register");
              response.sendRedirect("User_Register.jsp");  
                }
            }
  
        } catch (SQLException ex) {
            Logger.getLogger(register_user.class.getName()).log(Level.SEVERE, null, ex);
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
