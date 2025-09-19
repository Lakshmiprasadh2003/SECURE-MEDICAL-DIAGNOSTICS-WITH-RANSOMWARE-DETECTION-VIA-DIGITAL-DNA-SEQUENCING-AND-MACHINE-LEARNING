<%-- 
    Document   : filereq
    Created on : Oct 22, 2016, 3:16:42 PM
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
            DbConnection1 db=new DbConnection1();
            int i=db.Insert("insert into userreq(R_Id,doc_name,u_type,status,usr_name)values('"+id+"','"+session.getAttribute("Doctor")+"','Doc','pending','"+request.getParameter("name")+"')");
            int j=db.Insert("update user_report set status='ok' where S_No='"+id+"'");
            if(i>0&&j>0)
            {
                session.setAttribute("msg", "Successfully Send Request");
                response.sendRedirect("Doctor_Home.jsp");
            }
            else
            {
                session.setAttribute("msg", "Database error");
                response.sendRedirect("Doctor_Home.jsp");
            }
                
           
            %>
    </body>
</html>
