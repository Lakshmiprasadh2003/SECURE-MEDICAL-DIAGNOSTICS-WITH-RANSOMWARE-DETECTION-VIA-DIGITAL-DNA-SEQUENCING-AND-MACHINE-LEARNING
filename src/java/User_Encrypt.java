/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DbConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.BadPaddingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import sun.misc.BASE64Encoder;





/**
 *
 * @author mvinoth
 */
@WebServlet(urlPatterns = {"/User_Encrypt"})
public class User_Encrypt extends HttpServlet {

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
            throws ServletException, IOException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
      HttpSession session=request.getSession(true);
        
        try {
            Integer id=(Integer)session.getAttribute("U_Id");
                                    String name=(String)session.getAttribute("User");
                                                     session.setAttribute("U_Id",id);
            session.setAttribute("User",name);
            String U_Name="",Pass="",Mail="",Contact="",Addr="",qua="",pro="",Security="";
            U_Name=request.getParameter("U_Name");
            Pass=request.getParameter("U_Pass");
            Mail=request.getParameter("U_Adrr");
            Contact=request.getParameter("U_Ph");
            Addr=request.getParameter("desc");
            qua=request.getParameter("Quali");
            pro=request.getParameter("Prof");
          String[] values=request.getParameterValues("U_Name1");
          for(String str: values)
          {
              if(str.equals("1"))
              {
              String plainData=U_Name,decryptedText;
	KeyGenerator keyGen = KeyGenerator.getInstance("AES");
	keyGen.init(128);
	SecretKey secretKey = keyGen.generateKey();
	Cipher aesCipher = Cipher.getInstance("AES");
	aesCipher.init(Cipher.ENCRYPT_MODE,secretKey);
	byte[] byteDataToEncrypt = plainData.getBytes();
	byte[] byteCipherText = aesCipher.doFinal(byteDataToEncrypt); 
	U_Name = new BASE64Encoder().encode(byteCipherText);
                try {
                    aesCipher.init(Cipher.DECRYPT_MODE,secretKey,aesCipher.getParameters());
                } catch (InvalidAlgorithmParameterException ex) {
                    Logger.getLogger(User_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
                }
	byte[] byteDecryptedText = aesCipher.doFinal(byteCipherText);
	decryptedText = new String(byteDecryptedText);
	System.out.println("\n Plain Data : "+plainData+" \n Cipher Data : "+U_Name+" \n Decrypted Data : "+decryptedText);
              }
              if(str.equals("2"))
              {
              String plainData=Pass,decryptedText;
	KeyGenerator keyGen = KeyGenerator.getInstance("AES");
	keyGen.init(128);
	SecretKey secretKey = keyGen.generateKey();
	Cipher aesCipher = Cipher.getInstance("AES");
	aesCipher.init(Cipher.ENCRYPT_MODE,secretKey);
	byte[] byteDataToEncrypt = plainData.getBytes();
	byte[] byteCipherText = aesCipher.doFinal(byteDataToEncrypt); 
	Pass = new BASE64Encoder().encode(byteCipherText);
                try {
                    aesCipher.init(Cipher.DECRYPT_MODE,secretKey,aesCipher.getParameters());
                } catch (InvalidAlgorithmParameterException ex) {
                    Logger.getLogger(User_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
                }
	byte[] byteDecryptedText = aesCipher.doFinal(byteCipherText);
	decryptedText = new String(byteDecryptedText);
	System.out.println("\n Plain Data : "+plainData+" \n Cipher Data : "+Pass+" \n Decrypted Data : "+decryptedText);
              }
	if(str.equals("3"))
              {
              String plainData=Mail,decryptedText;
	KeyGenerator keyGen = KeyGenerator.getInstance("AES");
	keyGen.init(128);
	SecretKey secretKey = keyGen.generateKey();
	Cipher aesCipher = Cipher.getInstance("AES");
	aesCipher.init(Cipher.ENCRYPT_MODE,secretKey);
	byte[] byteDataToEncrypt = plainData.getBytes();
	byte[] byteCipherText = aesCipher.doFinal(byteDataToEncrypt); 
	Mail = new BASE64Encoder().encode(byteCipherText);
                try {
                    aesCipher.init(Cipher.DECRYPT_MODE,secretKey,aesCipher.getParameters());
                } catch (InvalidAlgorithmParameterException ex) {
                    Logger.getLogger(User_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
                }
	byte[] byteDecryptedText = aesCipher.doFinal(byteCipherText);
	decryptedText = new String(byteDecryptedText);
	System.out.println("\n Plain Data : "+plainData+" \n Cipher Data : "+Mail+" \n Decrypted Data : "+decryptedText);
              }
        	if(str.equals("4"))
              {
              String plainData=Contact,decryptedText;
	KeyGenerator keyGen = KeyGenerator.getInstance("AES");
	keyGen.init(128);
	SecretKey secretKey = keyGen.generateKey();
	Cipher aesCipher = Cipher.getInstance("AES");
	aesCipher.init(Cipher.ENCRYPT_MODE,secretKey);
	byte[] byteDataToEncrypt = plainData.getBytes();
	byte[] byteCipherText = aesCipher.doFinal(byteDataToEncrypt); 
	Contact = new BASE64Encoder().encode(byteCipherText);
                try {
                    aesCipher.init(Cipher.DECRYPT_MODE,secretKey,aesCipher.getParameters());
                } catch (InvalidAlgorithmParameterException ex) {
                    Logger.getLogger(User_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
                }
	byte[] byteDecryptedText = aesCipher.doFinal(byteCipherText);
	decryptedText = new String(byteDecryptedText);
	System.out.println("\n Plain Data : "+plainData+" \n Cipher Data : "+Contact+" \n Decrypted Data : "+decryptedText);
              }
                if(str.equals("5"))
              {
              String plainData=Addr,decryptedText;
	KeyGenerator keyGen = KeyGenerator.getInstance("AES");
	keyGen.init(128);
	SecretKey secretKey = keyGen.generateKey();
	Cipher aesCipher = Cipher.getInstance("AES");
	aesCipher.init(Cipher.ENCRYPT_MODE,secretKey);
	byte[] byteDataToEncrypt = plainData.getBytes();
	byte[] byteCipherText = aesCipher.doFinal(byteDataToEncrypt); 
	Addr = new BASE64Encoder().encode(byteCipherText);
                try {
                    aesCipher.init(Cipher.DECRYPT_MODE,secretKey,aesCipher.getParameters());
                } catch (InvalidAlgorithmParameterException ex) {
                    Logger.getLogger(User_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
                }
	byte[] byteDecryptedText = aesCipher.doFinal(byteCipherText);
	decryptedText = new String(byteDecryptedText);
	System.out.println("\n Plain Data : "+plainData+" \n Cipher Data : "+Addr+" \n Decrypted Data : "+decryptedText);
              }
          
           if(str.equals("5"))
              {
        String plainData=qua,decryptedText;
	KeyGenerator keyGen = KeyGenerator.getInstance("AES");
	keyGen.init(128);
	SecretKey secretKey = keyGen.generateKey();
	Cipher aesCipher = Cipher.getInstance("AES");
	aesCipher.init(Cipher.ENCRYPT_MODE,secretKey);
	byte[] byteDataToEncrypt = plainData.getBytes();
	byte[] byteCipherText = aesCipher.doFinal(byteDataToEncrypt); 
	qua = new BASE64Encoder().encode(byteCipherText);
                try {
                    aesCipher.init(Cipher.DECRYPT_MODE,secretKey,aesCipher.getParameters());
                } catch (InvalidAlgorithmParameterException ex) {
                    Logger.getLogger(User_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
                }
	byte[] byteDecryptedText = aesCipher.doFinal(byteCipherText);
	decryptedText = new String(byteDecryptedText);
	System.out.println("\n Plain Data : "+plainData+" \n Cipher Data : "+qua+" \n Decrypted Data : "+decryptedText);
              }
          
         if(str.equals("6"))
              {
        String plainData=pro,decryptedText;
	KeyGenerator keyGen = KeyGenerator.getInstance("AES");
	keyGen.init(128);
	SecretKey secretKey = keyGen.generateKey();
	Cipher aesCipher = Cipher.getInstance("AES");
	aesCipher.init(Cipher.ENCRYPT_MODE,secretKey);
	byte[] byteDataToEncrypt = plainData.getBytes();
	byte[] byteCipherText = aesCipher.doFinal(byteDataToEncrypt); 
	pro = new BASE64Encoder().encode(byteCipherText);
                try {
                    aesCipher.init(Cipher.DECRYPT_MODE,secretKey,aesCipher.getParameters());
                } catch (InvalidAlgorithmParameterException ex) {
                    Logger.getLogger(User_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
                }
	byte[] byteDecryptedText = aesCipher.doFinal(byteCipherText);
	decryptedText = new String(byteDecryptedText);
	System.out.println("\n Plain Data : "+plainData+" \n Cipher Data : "+pro+" \n Decrypted Data : "+decryptedText);
              }
          }
            DbConnection db=new DbConnection();
            String query="Select * from secure_table where U_ID='"+id+"'";
            String query1="insert into secure_table values('"+0+"','"+U_Name+"','"+Pass+"','"+Mail+"','"+Contact+"','"+Addr+"','"+Security+"','"+id+"','"+qua+"','"+pro+"')";
            ResultSet rs=db.Select(query);
            if(rs.next())
            {
              session.setAttribute("msg"," Already Encrypted ");
              response.sendRedirect("User_Information.jsp");
            }
            else
            {
                int i=db.Insert(query1);
                if(i>0)
                {
                    session.setAttribute("msg","Encrypted Successfully");
              response.sendRedirect("User_Information.jsp");
                }
                else
                {
                  session.setAttribute("msg","Data Base Error Can't Register");
              response.sendRedirect("User_Information.jsp");  
                }
            }
  
        }  catch (SQLException ex) {
               out.println(ex);
            }
         finally {            
          
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
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(User_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchPaddingException ex) {
            Logger.getLogger(User_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvalidKeyException ex) {
            Logger.getLogger(User_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalBlockSizeException ex) {
            Logger.getLogger(User_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
        } catch (BadPaddingException ex) {
            Logger.getLogger(User_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(User_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchPaddingException ex) {
            Logger.getLogger(User_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvalidKeyException ex) {
            Logger.getLogger(User_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalBlockSizeException ex) {
            Logger.getLogger(User_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
        } catch (BadPaddingException ex) {
            Logger.getLogger(User_Encrypt.class.getName()).log(Level.SEVERE, null, ex);
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
