/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author mvinoth
 */
 public class DbConnection {
    Statement st=null;
    Connection con=null;
   public  DbConnection()
     {
         try
         {
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare","root","admin");
           st=con.createStatement();
         }
         catch(Exception e)
         {
             System.out.println("Class Error"+e);
         }
     }
    public ResultSet Select(String query)
     {
         ResultSet rs=null;
        try {
            rs = st.executeQuery(query);
        } catch (SQLException ex) {
           System.out.println("Select Query Error"+ex);
        }
         return rs;
     }
    
 public  int Insert(String query)
     {
         int i=0;
        try {
            i=st.executeUpdate(query);
        } catch (SQLException ex) {
            System.out.println("Select Query Error"+ex);
        }
        return i;
     }
    
}
