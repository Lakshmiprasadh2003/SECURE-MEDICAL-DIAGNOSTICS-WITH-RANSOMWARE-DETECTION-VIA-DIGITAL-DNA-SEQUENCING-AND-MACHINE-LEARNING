<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DbConnection"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
	<head>
		<title>Healthy  Care</title>
               <!--

Template 2098 Health

http://www.tooplate.com/view/2098-health

-->
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="author" content="Tooplate">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">
     <link rel="stylesheet" href="css/animate.css">
     <link rel="stylesheet" href="css/owl.carousel.css">
     <link rel="stylesheet" href="css/owl.theme.default.min.css">

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="css/tooplate-style.css">	
		
		<script src="js/responsiveslides.min.js"></script>
 	
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});
		  </script>
	</head>
<body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

     <!-- PRE LOADER -->
     <section class="preloader">
          <div class="spinner">

               <span class="spinner-rotate"></span>
               
          </div>
     </section>

     <!-- HEADER -->
     <header>
          <div class="container">
               <div class="row">

                    <div class="col-md-4 col-sm-5">
                         <p>An efficient hierarchy attribute based encryption scheme in cloud computing</p>
                    </div>
                         
                    <div class="col-md-8 col-sm-7 text-align-right">
                         <span class="phone-icon"><i class="fa fa-phone"></i> 010-060-0160</span>
                         <span class="date-icon"><i class="fa fa-calendar-plus-o"></i> 6:00 AM - 10:00 PM (Mon-Fri)</span>
                         <span class="email-icon"><i class="fa fa-envelope-o"></i> <a href="#">info@company.com</a></span>
                    	<div class="header">
				<div class="wrap">
				
                                <%
                                    Integer id=(Integer)session.getAttribute("U_Id");
                                    String name=(String)session.getAttribute("User");
                                                     session.setAttribute("U_Id",id);
                                    session.setAttribute("User",name);
                                    DbConnection db=new DbConnection();
                                    System.out.println(id+","+name);
                                    ResultSet rs=db.Select("select * from user_registration where S_No='"+id+"' and Aadhar_ID='"+name+"'");
                                    if(rs.next())
                                    {
                                        String care=rs.getString("Aadhar_ID");
                                    %>
				<div class="contact-info">
					<ul>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Id :<%=id%>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Aadhar_ID :<%=care%>
                                             
					</ul>
				</div>
				<div class="clear"> </div>
				</div>
			</div>
                    </div>

               </div>
          </div>
     </header>


     <!-- MENU -->
     <section class="navbar navbar-default navbar-static-top" role="navigation">
          <div class="container">

               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a href="index.html" class="navbar-brand"><i class="fa fa-h-square"></i>ealthy Care</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                         <li><a href="User_Home.jsp" class="smoothScroll">HOME</a></li>
                         <li><a href="Services_Booking.jsp" class="smoothScroll">SERVICES</a></li>
                         <li><a href="Services_Details.jsp" class="smoothScroll">VIEW SERVICES</a></li>
                         <li><a href="logout.jsp" class="smoothScroll">LOGOUT</a></li>
                        
                    </ul>
               </div>
          </div>
     </section>


				<div class="clear"> </div>
				
		
		<div class="clear"> </div>
			<!--start-image-slider---->
				
					<!--End-image-slider---->
		    <div class="clear"> </div>
		    <div class="wrap">
		    	<div class="content">
                            <form action="Add_Booking" method="post">
                            <%
                                        String idf=(String)session.getAttribute("B_id");
                               
                                        String Hospital=request.getParameter("Hospital");
                                     
                                            String Doctor=request.getParameter("Doctor");
                                  
                                            String Service=request.getParameter("Service");
                                            System.out.println(idf);
                                        System.out.println(Hospital);
                                         System.out.println(Doctor);
                                          System.out.println(Service);
                                        if(idf!=null && Hospital!=null && Doctor!=null &&Service!=null)
                                        {
                                        // int S_Id=Integer.parseInt(Service);
                                               int D_Id=Integer.parseInt(Doctor);
                                               //   int H_Id=Integer.parseInt(Hospital);
                                                           int B_Id=Integer.parseInt(idf);
                                                    String Query3="select * from provider_details where S_No='"+B_Id+"'";
                                  String Query="select * from provider_hospital where H_Name='"+Hospital+"' and Care_Id='"+B_Id+"'";
                                    String Query1="select * from provider_doctors where S_No='"+D_Id+"' and Care_Id='"+B_Id+"'";
                                      String Query2="select * from provider_services where Service_name='"+Service+"' and Care_Id='"+B_Id+"'";
                                    System.out.println(Query3);
                                      %>
                                      <center>
                                           <br><b><h4><font size="6px" color="#1E90FF">OVER ALL BOOKING REPORT</font></h4></b>
                                     
                                          <table>
                                              <tr><td> <h5 style="color: #700">User Information</h5></td></tr>
                                  <tr><td>User ID :</td><td><%=id%></td></tr>
                                          <tr><td>User Name:</td><td><%=care%></td></tr>
                                          <%
                                        ResultSet Rs1=db.Select(Query3);
                                  if(Rs1.next())
                                        {
                                        %>
                                        <tr><td> <h5 style="color: #700">Provider Information</h5></td></tr>
                                     <tr><td>Provider ID :</td><td><%=Rs1.getInt("S_No")%></td></tr>
                                     <input type="text" value="<%=Rs1.getInt("S_No")%>" name="P_Id" hidden>
                                          <tr><td>Provider Name:</td><td><%=Rs1.getString("P_Name")%></td></tr>
                                            
                                             <tr><td>Health Care Name:</td><td><%=Rs1.getString("Health_name")%></td></tr>
                                      
                                        <%
                                        }
                                        
                                        ResultSet Rs2=db.Select(Query);
                                  if(Rs2.next())
                                        {
                                        %>
                                        <tr><td> <h5 style="color: #700">Hospital Information</h5></td></tr>
                                         <tr><td>Hospital ID :</td><td><%=Rs2.getInt("S_No")%></td></tr>
                                           <input type="text" value="<%=Rs2.getInt("S_No")%>" name="H_Id" hidden>
                                          <tr><td>Hospital Name:</td><td><%=Rs2.getString("H_Name")%></td></tr>
                                             <tr><td>Hospital Address:</td><td><%=Rs2.getString("Address")%></td></tr>
                                        
                                        <%
                                        }
                                           ResultSet Rs3=db.Select(Query1);
                                  if(Rs3.next())
                                        {
                                        %>
                                        <tr><td> <h5 style="color: #700">Doctor Information</h5></td></tr>
                                         <tr><td>Doctor ID :</td><td><%=Rs3.getInt("S_No")%></td></tr>
                                           <input type="text" value="<%=Rs3.getInt("S_No")%>" name="D_Id" hidden>
                                          <tr><td>Doctor Name:</td><td><%=Rs3.getString("D_Name")%></td></tr>
                                             <tr><td>Doctor Description:</td><td><%=Rs3.getString("D_Details")%></td></tr>
                                         
                                        <%
                                        }
                                         ResultSet Rs4=db.Select(Query2);
                                  if(Rs4.next())
                                        {
                                        %>
                                        <tr><td> <h5 style="color: #700">Service Information</h5></td><tr>
                                       <tr><td>Service ID :</td><td><%=Rs4.getInt("S_No")%></td></tr>
                                         <input type="text" value="<%=Rs4.getInt("S_No")%>" name="S_Id" hidden>
                                          <tr><td>Service Name:</td><td><%=Rs4.getString("Service_name")%></td></tr>
                                             <tr><td>Amount:</td><td><%=Rs4.getString("Amount")%></td></tr>
                                        
                                        <%
                                        }
                                        %>
                                      </table>
                                      <h6><input type="SUBMIT" value="SUBMIT"><a href="Services_Booking.jsp"><input type="button" value="CANCEL"></a></h6>
                                      </center>
                            </form>
						 <div class="clear"> </div>
                                                   <%
                                String msg=(String)session.getAttribute("msg");
                                if(msg!=null)
                                {
                                    %>
                                    <script>
                                        var ss='<%=msg%>';
                                        alert(ss);
                                        </script>
                                    <%
                                    session.removeAttribute("msg");
                                }
                                %>
  
		</div>
	
						 <div class="clear"> </div>
  
		</div>
		<div class="clear"> </div>
		
			<div class="clear"> </div>
			
		</div>
                    <%
                                        }
                                    else
                                        {
                                    session.setAttribute("msg","Please Select Again values");
                                    response.sendRedirect("Booking.jsp?B_id="+idf);
                                        }
                                    }
                                    else
                                    {
                                        session.setAttribute("msg", "Session Out Please Login");
                                        response.sendRedirect("User_Login.jsp");
                                    }
                                        %>
	
<script src="js/jquery1.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/jquery.sticky.js"></script>
     <script src="js/jquery.stellar.min.js"></script>
     <script src="js/wow.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/owl.carousel.min.js"></script>
     <script src="js/custom.js"></script>
</body>
</html>

