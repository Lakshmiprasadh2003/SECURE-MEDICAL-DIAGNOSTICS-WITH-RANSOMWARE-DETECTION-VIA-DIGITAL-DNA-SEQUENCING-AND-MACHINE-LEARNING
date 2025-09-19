/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DbConnection;
import Connection.Encryption;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.InvalidKeyException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
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
@WebServlet(urlPatterns = {"/Response_Encrypt"})
public class Response_Encrypt extends HttpServlet {

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
            throws ServletException, IOException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
          HttpSession session=request.getSession(true);
        try {
        

         String id1=request.getParameter("id1");
          String S_No=request.getParameter("S_No");
        String name=request.getParameter("name");
        String H_id=request.getParameter("H_id");
        String D_id=request.getParameter("D_id");
        String Sysm=request.getParameter("Sysm");
              String Resp=request.getParameter("Resp");
        int id11=Integer.parseInt(id1);
        int S_No1=Integer.parseInt(S_No);
     int H_Id1=Integer.parseInt(H_id);
                int D_Id1=Integer.parseInt(D_id);
                        String[] values=request.getParameterValues("U_Name1");
                         Encryption ed=new Encryption();
    for(String str: values)
          {
              System.out.println(str);
              if(str.equals("1"))
              {
                 
                  Sysm=ed.Encryption1(Sysm);
                     
              }
              if(str.equals("2"))
              {
                  
                  Resp=ed.Encryption1(Resp);
                     
              }
          }
        DbConnection db=new DbConnection();
        
        String Status1="1";
          //String Status2="1";
        String pass=Resp;
      //  String query="Select * from booking_service where U_ID='"+id+"' and U_Name='"+name+"'";
        String query1="insert into treatment_encrypt values('"+0+"','"+id11+"','"+name+"','"+H_Id1+"','"+D_Id1+"','"+Sysm+"','"+pass+"','"+Status1+"','"+S_No1+"') ";
        
    String qq="Update user_treatment set E_Status='"+Status1+"' where U_ID='"+id11+"'";
            try {
           
                    int i=db.Insert(query1);
                    int j=db.Insert(qq);
                    if(i>0)
                    {
                         session.setAttribute("msg"," Encrypted Successfully");
                    response.sendRedirect("Doctor_Replay.jsp");
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
        try {
            processRequest(request, response);
        } catch (InvalidKeyException ex) {
            Logger.getLogger(Response_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalBlockSizeException ex) {
            Logger.getLogger(Response_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
        } catch (BadPaddingException ex) {
            Logger.getLogger(Response_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (InvalidKeyException ex) {
            Logger.getLogger(Response_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalBlockSizeException ex) {
            Logger.getLogger(Response_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
        } catch (BadPaddingException ex) {
            Logger.getLogger(Response_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
        }
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
