/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


/**
 *
 * @author mvinoth
 */
@WebServlet(urlPatterns = {"/ProviderReg"})
public class ProviderReg extends HttpServlet {

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
            throws ServletException, IOException, FileUploadException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession(true);
       
        try {
         
            
            String H_Name="",P_Name="",UP_Name="",P_pass="",P_Adrr="",Ph="",Mail="",Year="";
            String saveFile="",l="",ln="",mname="",dob="",celno="",typ="";
                String sex="",voterno="",email="",bg="",pstreet="",cstreet="",parea="",carea="",pcity="",ccity="";
                   String ppinno="",cpinno="",pass="",repass="";
            int fileidnum=0,downloadcount=0,vc=0;
           // String contentType = request.getContentType();
            // Create a factory for disk-based file items
            DiskFileItemFactory factory = new DiskFileItemFactory();

// Set factory constraints
            factory.setSizeThreshold(4012);
//factory.setRepository("c:");

// Create a new file upload handler
            ServletFileUpload upload = new ServletFileUpload(factory);

// Set overall request size constraint
            //upload.setSizeMax(10024);

// Parse the request
            List items = null;
            try {
                items = upload.parseRequest(request);
            } catch (FileUploadException e) {
                e.printStackTrace();
            }
            byte[] data = null;
            String fileName = null;
// Process the uploaded items
            Iterator iter = items.iterator();
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();

                if (item.isFormField()) {
                    //processFormField(item);

                    String name = item.getFieldName();
                    String value = item.getString();

                    if (name.equalsIgnoreCase("H_Name")) {
                        H_Name = value;
                        System.out.println("H_Name" + H_Name);
                    } 
                    
                    
                  else  if (name.equalsIgnoreCase("P_Name")) {
                        P_Name = value;
                        System.out.println("P_Name" + P_Name);
                    } 
                  
                  else  if (name.equalsIgnoreCase("UP_Name")) {
                        UP_Name = value;
                        System.out.println("UP_Name" + UP_Name);
                    }
                  else  if (name.equalsIgnoreCase("P_pass")) {
                        P_pass = value;
                        System.out.println("P_pass" + P_pass);
                    }
                  else  if (name.equalsIgnoreCase("P_Adrr")) {
                        P_Adrr = value;
                        System.out.println("P_Adrr" + P_Adrr);
                    }
                  else  if (name.equalsIgnoreCase("Ph")) {
                        Ph = value;
                        System.out.println("Ph" + Ph);
                    }
                   else  if (name.equalsIgnoreCase("Mail")) {
                        Mail = value;
                        System.out.println("Mail" + Mail);
                    }
                    else  if (name.equalsIgnoreCase("Year")) {
                        Year = value;
                        System.out.println("Year" + Year);
                    }
                   
                    else {
                        System.out.println("ERROR");
                    }
                } else {
                    data = item.get();
                    fileName = item.getName();
                }
            }
            saveFile = fileName;
                    String path1 = request.getSession().getServletContext().getRealPath("/");
              String patt=path1.replace("\\build", "");
               
               String strPath1 = patt+"\\"+saveFile;
            File ff1 = new File(strPath1);
            FileOutputStream fileOut1 = new FileOutputStream(ff1);
            fileOut1.write(data, 0, data.length);
            fileOut1.flush();
            fileOut1.close();
        out.println(saveFile);
        /////////////////////////////////////////////////////////

FileInputStream fis11 = null;
File image1 = null;
//FileInputStream fis11 = null;
File image11 = null;
	Connection con7=null;
	PreparedStatement st7=null;
      
       
PreparedStatement st11=null;

image1 = new File(strPath1);
fis11 = new FileInputStream(image1);
        
       

     Class.forName("com.mysql.jdbc.Driver");
     con7 = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare","root","admin");
  
 
   
     
         
String query="Select * from provider_details where P_Name='"+P_Name+"' or Health_Name='"+H_Name+"' or Username='"+UP_Name+"'";
System.out.println(query);
            Statement st=con7.createStatement();
ResultSet rs=st.executeQuery(query);

if(rs.next())
{
    
   session.setAttribute("msg","Already exist Please Check Values");
      response.sendRedirect("Provider_Reg.jsp");  
}
else
{
        st7 =con7.prepareStatement("insert into provider_details values (?,?,?,?,?,?,?,?,?,?)");

st7.setInt(1,0);
st7.setString(2,P_Name);

st7.setString(3,H_Name);

st7.setString(4,P_Adrr);
st7.setString(5,Ph);
st7.setString(6,Mail);
st7.setString(7,UP_Name);
st7.setString(8,P_pass);

st7.setString(9,Year);


if(fileName != "")
        st7.setBinaryStream(10, (InputStream)fis11, (int)(image1.length()));
else
    st7.setBinaryStream(10, null);

      int i =st7.executeUpdate();
      session.setAttribute("msg","Successfully registered");
      response.sendRedirect("Provider_Reg.jsp");
}   
      
        }
        catch(Exception e)
        {
       out.println(e);
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
        } catch (FileUploadException ex) {
            Logger.getLogger(ProviderReg.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProviderReg.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ProviderReg.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (FileUploadException ex) {
            Logger.getLogger(ProviderReg.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProviderReg.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ProviderReg.class.getName()).log(Level.SEVERE, null, ex);
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
