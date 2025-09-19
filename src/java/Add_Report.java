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
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;
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
 * @author surendhar
 */
@WebServlet(urlPatterns = {"/Add_Report"})
public class Add_Report extends HttpServlet {

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
         
           String saveFile1=""; 
            String password="",F_Name="",L_Name="",U_Ph="",gender="",file1="";
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
            String ftime=null,doctor=null;
            List items = null;
            try {
                items = upload.parseRequest(request);
            } catch (FileUploadException e) {
                e.printStackTrace();
            }
            byte[] data = null;
            String fileName = null;
             byte[] data1 = null;
            String fileName1 = null;
// Process the uploaded items
            Iterator iter = items.iterator();
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();

                if (item.isFormField()) {
                    //processFormField(item);

                    String name = item.getFieldName();
                    String value = item.getString();

                    if (name.equalsIgnoreCase("Ano")) {
                        email = value;
                        System.out.println("A_Name" + email);
                    } 
                    
                  else  if (name.equalsIgnoreCase("cdate")) {
                        password = value;
                        System.out.println("U_Name" + password);
                    } 
                  
                  else  if (name.equalsIgnoreCase("rprt")) {
                        F_Name = value;
                        System.out.println("Gender" + F_Name);
                    }
                  else  if (name.equalsIgnoreCase("des")) {
                        L_Name = value;
                        System.out.println("date" + L_Name);
                    }
                     else  if (name.equalsIgnoreCase("ftime")) {
                        ftime = value;
                        System.out.println("date" + ftime);
                    }          
    else  if (name.equalsIgnoreCase("doctor")) {
                        doctor = value;
                        System.out.println("date" + doctor);
                    } 
                   
                    else {
                        System.out.println("ERROR");
                    }
                } else 
                {
                   
                    
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
File image111 = null;
	Connection con7=null;
	PreparedStatement st7=null;
      
       
PreparedStatement st11=null;

image1 = new File(strPath1);
fis11 = new FileInputStream(image1);
  
       String dd="0";

     Class.forName("com.mysql.jdbc.Driver");
     con7 = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcarees","root","admin");
  
 String doc="",care="";

   
     
         String sname=F_Name+" "+L_Name;


        st7 =con7.prepareStatement("insert into user_report values (?,?,?,?,?,?,?,?,?,?)");
        st7.setInt(1,0);

//st7.setInt(2,0);
st7.setString(2,email);

st7.setString(3,L_Name);

st7.setString(4, F_Name);





if(fileName != "")
        st7.setBinaryStream(5, (InputStream)fis11, (int)(image1.length()));
else
    st7.setBinaryStream(5, null);
st7.setString(6,password);
st7.setString(7,(String)session.getAttribute("Doctor"));
st7.setString(8,doctor);
st7.setString(9,ftime);
 st7.setString(10,"pending");       
      int i =st7.executeUpdate();
      session.setAttribute("msg","Successfully Update");
      response.sendRedirect("Add_Report.jsp");
  
      
        }
        catch(Exception e)
        {
       out.println(e);
        }finally {            
          
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
