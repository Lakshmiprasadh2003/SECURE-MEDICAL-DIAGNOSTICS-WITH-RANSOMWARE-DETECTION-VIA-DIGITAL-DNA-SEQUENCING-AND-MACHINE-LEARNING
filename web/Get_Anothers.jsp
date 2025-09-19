<%-- 
    Document   : Get_Anothers
    Created on : 4-Apr-2016, 1:24:28 PM
    Author     : Diwakar
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DbConnection"%>
<%
    DbConnection fc = new DbConnection();
    String Cat = request.getParameter("val");
    int cct=Integer.parseInt(Cat);
    ResultSet rs = fc.Select("select * from add_upload");
    while (rs.next()) {
        out.println(rs.getString("S_No") + "-" + rs.getString("Name") + ",");
    }
%>

