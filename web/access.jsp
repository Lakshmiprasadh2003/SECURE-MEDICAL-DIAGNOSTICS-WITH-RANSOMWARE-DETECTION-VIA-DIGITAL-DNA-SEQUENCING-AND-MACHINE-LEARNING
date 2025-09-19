<%-- 
    Document   : access
    Created on : Oct 22, 2016, 6:42:27 PM
    Author     : chitraa
--%>

<%@page import="Connection.DbConnection1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
      try
      {
            String id=request.getParameter("id");
             String cdate=request.getParameter("ct");
              String st=request.getParameter("st");
              String fid=request.getParameter("fid");
            DbConnection1 db=new DbConnection1();
            int i=db.Insert("update userreq  set Status1='Reject' where S_No='"+id+"'");
        out.println("update userreq  set Status1='Reject' where S_No='"+id+"'");
            int j=db.Insert("update user_report set S_No='"+fid+"',status='pending' where S_No='"+fid+"'");
        out.println("update user_report set S_No='"+fid+"',status='pending' where S_No='"+fid+"'"); 
        if(i>0&&j>0)
            {
                session.setAttribute("msg", "Successfully Send Request");
                 response.sendRedirect("Report_req.jsp");
            }
            else
            {
                session.setAttribute("msg", "Database error");
               response.sendRedirect("Report_req.jsp");
            }
      }
      catch(Exception e)
      {
        out.println(e);
      }
                
           
            %>
    </body>
</html>
