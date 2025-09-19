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
     <link rel="stylesheet" href="css/tooplate-style.css">

		<link rel="stylesheet" href="css/style2.css" />
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
                         <li><a href="index.html" class="smoothScroll">HOME</a></li>
                         
                         <li><a href="User_Register.jsp" class="smoothScroll">USER REGISTRATION</a></li>
                         <
                         <li><a href="Online_Help.jsp" class="smoothScroll">DOCTOR LOGIN</a></li>
                         
                    </ul>
               </div>

          </div>
     </section>

     <br>
			<div class="header">
				<div class="wrap">
				
				
				<div class="clear"> </div>
				</div>
			</div>
				<div class="clear"> </div>
				
		
		<div class="clear"> </div>
			<!--start-image-slider---->
				
					<!--End-image-slider---->
		    <div class="clear"> </div>
		    <div class="wrap">
		    	<div class="content">
                            
                              <div class="container1"> 
                                          
                                            <br>
                            <center><br><br><h1 style="color: green"></h1> </center>
                            <br>
                           <br>
        <div class="form-wrapper"> 
                          <form action ="emergency1.jsp" method="post">
                              <centre><table border="2">
                  <th><tr><td>S_No</td> <td>Hospital Name&nbsp;&nbsp;</td> &nbsp;&nbsp;<td>Doctor Name</td> <td>Department</td></tr></th> 
                            <%
DbConnection db=new DbConnection();
System.out.println("SELECT * FROM provider_doctors inner join booking_service on booking_service.D_ID=provider_doctors.S_No and booking_service.U_Name  ='"+session.getAttribute("User")+"'");
ResultSet rs=db.Select("SELECT * FROM provider_doctors inner join booking_service on booking_service.D_ID=provider_doctors.S_No and booking_service.U_Name  ='"+session.getAttribute("User")+"'");

while(rs.next())
{%>

<center>
      
      
    <tr><td><%=rs.getInt("S_No")%></td> &nbsp;&nbsp;
    <td><%=rs.getString("Care_Name")%></td>&nbsp;&nbsp;
    <td><%=rs.getString("D_Name")%></td> &nbsp;&nbsp;
    <td><%=rs.getString("D_Details")%></td> &nbsp;&nbsp;    
    <td><input type="checkbox" name="did" value="<%=rs.getString("D_Name")%>"></td>
    </tr>
              <%
    
}
//response.sendRedirect("User_Home.jsp");
%>	
</table></center>
    </br>
    </br>
    
        <input type="Submit" value="OK" onclick="">
    </form>
        </div>
                              </div>
						 <div class="clear"> </div>
  
		</div>
		<div class="clear"> </div>
		
			<div class="clear"> </div>
			
		</div>
	
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
<%--int i=db.Insert("insert into emerency values('0','"+session.getAttribute("User")+"','"+session.getAttribute("name1")+"','No')");
session.setAttribute("msg", "Emergency Alert Active");
--%>
