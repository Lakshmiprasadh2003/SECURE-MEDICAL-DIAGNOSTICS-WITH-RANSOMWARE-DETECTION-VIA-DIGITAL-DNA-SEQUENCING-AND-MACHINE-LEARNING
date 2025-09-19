<%-- 
    Document   : servlet
    Created on : Jan 4, 2012, 10:56:41 PM
    Author     : chitraa
--%>
<%@ page import="java.sql.*,java.io.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<% // declare a connection by using Connection interface Connection connection = null;
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost
and database name is mahendra. */
String uid=request.getParameter("name");
System.out.println("id"+uid);

String connectionURL = "jdbc:mysql://localhost:3306/healthcarees";
/*declare a resultSet that works as a table resulted by execute a specified
sql query. */
ResultSet rs = null;
// Declare statement.
PreparedStatement psmnt = null;
// declare InputStream object to store binary stream of given image.
InputStream sImage;
try {
// Load JDBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes
parameters of string type connection url, user name and password to
connect to database. */
Connection con = DriverManager.getConnection(connectionURL, "root","admin");
/* prepareStatement() is used for create statement object that is
used for sending sql statements to the specified database. */
psmnt = con.prepareStatement("SELECT Images FROM user_report WHERE S_No =?");
psmnt.setString(1, uid); // here integer number 'fff' is image id from the table
rs = psmnt.executeQuery();
while(rs.next()) {
byte[] bytearray = new byte[1048576];
int size=0;
sImage = rs.getBinaryStream(1);
response.reset();
response.setContentType("image/jpeg");
while((size=sImage.read(bytearray))!= -1 ){
response.getOutputStream().write(bytearray,0,size);

}
}
response.getOutputStream().close();
}
catch(Exception ex){
out.println("error :"+ex);
}
finally {
// close all the connections.



}
%>