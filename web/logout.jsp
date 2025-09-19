
<%-- 
    Document   : logout
    Created on : Jun 3, 2014, 11:21:03 AM
    Author     : mvinoth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            session.invalidate();
   
            response.sendRedirect("index.html");
            %>
    </body>
</html>
