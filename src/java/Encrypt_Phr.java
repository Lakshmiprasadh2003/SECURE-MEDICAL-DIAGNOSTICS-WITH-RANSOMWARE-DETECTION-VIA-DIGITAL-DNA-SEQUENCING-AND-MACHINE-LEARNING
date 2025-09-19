/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DbConnection;
import Connection.Encryption;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.InvalidAlgorithmParameterException;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sun.misc.BASE64Encoder;

/**
 *
 * @author mvinoth
 */
@WebServlet(urlPatterns = {"/Encrypt_Phr"})
public class Encrypt_Phr extends HttpServlet {

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
        String inputDate=request.getParameter("inputDate");
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
    String[] values=request.getParameterValues("U_Name1");
    String[] formval={"inputDate","Surgery","BG","Age","Issues","BB","Height","Weight","Quali","Prof","C_Date",};
    int j=0;
     Encryption ed=new Encryption();
    for(String str: values)
          {
              System.out.println(str);
              if(str.equals("inputDate"))
              {
                 
                  inputDate=ed.Encryption1(inputDate);
                     
              }
              if(str.equals("Surgery"))
              {
                  
                  Surgery=ed.Encryption1(Surgery);
                     
              }
              if(str.equals("BG"))
              {
                 
                  BG=ed.Encryption1(BG);
                     
              }
              if(str.equals("Age"))
              {
                  
                  Age=ed.Encryption1(Age);
                     
              }
              if(str.equals("Issues"))
              {
                
                  Issues=ed.Encryption1(Issues);
                     
              }
              if(str.equals("BB"))
              {
                 
                  BB=ed.Encryption1(BB);
                     
              }
              if(str.equals("Height"))
              {
                  
                  Height=ed.Encryption1(Height);
                     
              }
              if(str.equals("Weight"))
              {
                  
                  Weight=ed.Encryption1(Weight);
                     
              }
              if(str.equals("Quali"))
              {
                  
                  Quali=ed.Encryption1(Quali);
                     
              }
               if(str.equals("Prof"))
              {
                  
                  Prof=ed.Encryption1(Prof);
                     
              }
              if(str.equals("C_Date"))
              {
                  
                  C_Date=ed.Encryption1(C_Date);
                     
              }
              }
          
        
        DbConnection db=new DbConnection();
        int id1=Integer.parseInt(id);
    
        String query1="insert into user_phr_secure values('"+0+"','"+U_Name+"','"+id1+"','"+inputDate+"','"+Quali+"','"+Prof+"','"+Age+"','"+Surgery+"','"+Issues+"','"+BB+"','"+Height+"','"+Weight+"','"+BG+"','"+C_Date+"') ";
         String query="Select * from user_phr_secure where User_Id='"+id1+"'";
         ResultSet rsd=db.Select(query);
         if(rsd.next())
         {
             session.setAttribute("msg","All ready Phr Encrypted");
                   response.sendRedirect("Phr_Information.jsp");
         }
         else
         {
                    int i=db.Insert(query1);
                    if(i>0)
                    {
                         session.setAttribute("msg","Add PHR Successfully Added");
                   response.sendRedirect("Phr_Information.jsp");
                    }
         }
           
          
        }
       catch(Exception e)
       {
           out.println(e);
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
