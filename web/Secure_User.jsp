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
		<title>Healthy Care</title>
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
        <link rel="stylesheet" href="css/style2.css" />
		
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
                         <li><a href="Admin_Home.jsp" class="smoothScroll">HOME</a></li>
                         <li><a href="Secure_User.jsp" class="smoothScroll">USER INFORMATION</a></li>
                         <li><a href="Non_Secure.jsp" class="smoothScroll">USER PHR DETAILS</a></li>
                         <li><a href="Provider_Details.jsp" class="smoothScroll">PROVIDER DETAILS</a></li>
                         <li><a href="logout.jsp" class="smoothScroll">LOGOUT </a></li>
                        
                    </ul>
               </div>

          </div>
     </section> 
  
            
            
            
            <%
                String name=(String)session.getAttribute("name");
                 String pass=(String)session.getAttribute("pass");
                   session.setAttribute("name",name);
                   session.setAttribute("pass",pass);
                     System.out.println(name+","+pass);
                   if(name!=null&&pass!=null)
                   {
                      if(name.equals("Admin")&&pass.equals("pass"))
            {
                %>
			<div class="header">
				<div class="wrap">
				
				
				<div class="clear"> </div>
				</div>
			</div>
				<div class="clear"> </div>
				
		 <%
                  String msg=(String)session.getAttribute("msg");
                  if(msg!=null)
                  {%>
                 
                      <script>
                          var ss='<%=msg%>';
                          alert(ss);
                      </script>
                          
              <%  
                      session.removeAttribute("msg");
                  }
                
                 
                  %>
		<div class="clear"> </div>
			<!--start-image-slider---->
				
					<!--End-image-slider---->
		    <div class="clear"> </div>
		    <div class="wrap">
		    	<div class="content">
                            
                            <br>  
                            <div class="container1">
     
        <h3>USER PERSONAL INFORMATION</h3>
        <br>
        <br>
        <div class="form-wrapper">
    
            <center> <table border="2">
                <tr><th>User Name</th><th>User Aadhar_ID</th><th>Mail id</th><th>Phone Number</th><th>Address</th></tr>
                <div class="form-item">
                     <%
                                        try
                                        {
                                                DbConnection db=new DbConnection();
                                       
                                           String query1="SELECT U_Name,Aadhar_ID,U_Mail, U_Ph, U_Addr  FROM user_registration";
                                           ResultSet rf=db.Select(query1);
                                         while(rf.next())
                                           {
                                        %>
                                       
                                    <tr><td><%=rf.getString("U_Name")%></td><td><%=rf.getString("Aadhar_ID")%></td><td><%=rf.getString("U_Mail")%></td><td><%=rf.getString("U_Ph")%></td><td><%=rf.getString("U_Addr")%></td></tr>
						
						
                                                   <%
                                           }
                                         
                                        }
                                        catch(Exception e)
                                        {
                                           System.out.println(e);
                                        }
                                       %>

                            </table></center>
                </div>
          <br>
        </div>

                            <br>
                            
                           <!-- <center><br><br><b><h3><font size="6px" color="#1E90FF" >USER PERSONAL INFORMATION</font></h3></b><br><table border="2">
                             
                                    
                                    <tr><th>User Name</th><th>Mail id</th><th>Phone Number</th><th>Address</th></tr>
                                  
                                  
						 <div class="clear"> </div>
  
		</div>-->
		<div class="clear"> </div>
		
			<div class="clear"> </div>
			<div class="footer">
				
                            <%
                    }
                        else
            {
               
                
               session.setAttribute("msg","Session out please login");
                response.sendRedirect("admin.jsp");
                
                
            }
                   }
             else
            {
               
                
               session.setAttribute("msg","Session out please login");
                response.sendRedirect("admin.jsp");
                
                
            }
                  %>
                  <br>
                  <div class="clear"> </div>
                                
                          
			</div>
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

