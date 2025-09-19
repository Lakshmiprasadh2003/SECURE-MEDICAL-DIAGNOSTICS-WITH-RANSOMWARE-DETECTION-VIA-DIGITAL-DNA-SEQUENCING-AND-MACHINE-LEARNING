<%-- 
    Document   : access1
    Created on : Oct 24, 2016, 10:18:27 AM
    Author     : chitraa
--%>

<%@page import="Connection.DbConnection1"%>
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
            String id=request.getParameter("id");
             String cdate=request.getParameter("ct");
              String st=request.getParameter("st");
              String fid=request.getParameter("fid");
            DbConnection1 db=new DbConnection1();
            int i=db.Insert("update userreq  set Status1='Accepted' where S_No='"+id+"'");
            int j=db.Insert("update user_report set ftime='"+st+"',status='pending',Date='"+cdate+"' where S_No='"+fid+"'");
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
                
           
            %>
    </body>
</html>
