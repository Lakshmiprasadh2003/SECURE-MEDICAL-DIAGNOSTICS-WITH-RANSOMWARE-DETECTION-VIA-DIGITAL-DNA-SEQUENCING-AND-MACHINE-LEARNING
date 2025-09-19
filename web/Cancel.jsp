<%-- 
    Document   : Cancel
    Created on : Jul 16, 2014, 4:42:59 PM
    Author     : mvinoth
--%>

<%@page import="Connection.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
            Integer id=(Integer)session.getAttribute("P_Id");
                                    String name=(String)session.getAttribute("provider");
                                                     session.setAttribute("P_Id",id);
                     session.setAttribute("provider",name);
                     String id1=request.getParameter("id1");
                     System.out.println(id1);
                     int ids=Integer.parseInt(id1);
                     String ss="2";
                      String Query="Update booking_service set Status1='"+ss+"' where S_No='"+ids+"'";
                     DbConnection db=new DbConnection();
                     int i=db.Insert(Query);
                     if(i>0)
                     {
                         session.setAttribute("msg", "Successfully Canceled ");
                         response.sendRedirect("Inbox.jsp");
                     }
                     else
                     {
                         session.setAttribute("msg", "Database Error");
                         response.sendRedirect("Inbox.jsp");
                     }
                                     
            %>
    </body>
</html>
