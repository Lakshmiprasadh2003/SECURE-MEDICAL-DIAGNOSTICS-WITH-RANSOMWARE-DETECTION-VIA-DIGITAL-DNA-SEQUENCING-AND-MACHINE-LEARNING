<%-- 
    Document   : User_De_Pro
    Created on : Jul 17, 2014, 1:02:14 PM
    Author     : mvinoth
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
 
    <body>
    
        <center><br><h4><font size="5px" color="#1E90FF">USER DETAIlS</font></h4>
                                <br><table>
                                   
                            <%
                                        try
                                        {
                                                DbConnection db=new DbConnection();
                                        String ss="1";
                                      
                                     String id=request.getParameter("id1");
                                      int id1=Integer.parseInt(id);
                                           String query1="Select * from secure_table where U_ID='"+id1+"'";
                                           ResultSet rf=db.Select(query1);
                                           if(rf.next())
                                           {
                                        %>
                                         <tr><th>User Id</th><th>User Name</th><th>Mail id</th><th>Phone Number</th><th>Address</th></tr>
                                    <tr><td><%=rf.getInt("S_No")%></td><td><%=rf.getString("U_Name")%></td><td><%=rf.getString("U_Mail")%></td><td><%=rf.getString("U_Ph")%></td><td><%=rf.getString("U_Addr")%></td></tr>
						
						
                                                   <%
                                           }
                                           else
                                           {
                                               %>
                                               NO SECURE DATES
                                               <%
                                           }
                                       
                                        }
                                        catch(Exception e)
                                        {
                                           System.out.println(e);
                                        }
                                       %>
    </body>
</html>
