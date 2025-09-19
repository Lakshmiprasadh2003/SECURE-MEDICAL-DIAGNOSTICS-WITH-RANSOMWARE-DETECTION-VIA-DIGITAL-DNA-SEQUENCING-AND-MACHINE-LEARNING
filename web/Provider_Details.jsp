<%@page import="Connection.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
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
                  <br>
		<div class="clear"> </div>
			<!--start-image-slider---->
				
					<!--End-image-slider---->
		    <div class="clear"> </div>
		    <div class="wrap">
		    	<div class="content">
                            <div class="container1">
                            
                                <%
                  DbConnection db=new DbConnection();
                                        ResultSet ts=db.Select("Select * from provider_details");
                                        
                                        %>		
						 <h3>SERVICES DETAILS</h3>
        <br>
        <br>
        <div class="form-wrapper">
                                                     
            <table border="2">
                                        
                                           <tr><th>S_No</th><th>Provider Name</th><th>Health Care Name</th><th>Address</th><th>Contact</th><th>Mail_Id</th><th>Year Of Starting</th><th>Image</th>
                                               </tr>
                                           <%
                                        while(ts.next())
                                        {
                                            %>
                                           <tr><td><%=ts.getInt("S_No")%></td>
                                           <td><%=ts.getString("P_Name")%></td>
                                           <td><%=ts.getString("Health_name")%></td>
                                           <td><%=ts.getString("address")%></td>
                                           <td><%=ts.getString("Contact")%></td>
                                           <td><%=ts.getString("Mail_ID")%></td>
                                           <td><%=ts.getString("Year_starting")%></td>
                                           <td><img src="servlet_1.jsp?name=<%=ts.getInt("S_No")%> " style="width: 150px; height: 90px;"></td> 
                                        
                                           
                                           </tr>
                                           <%
                                        }
                                        %>
                                        </table>
                                        <br>
                                        </center>
                                  
						 <div class="clear"> </div>
  
		</div>
                            </div>
		<div class="clear"> </div>
		
			<div class="clear"> </div>
			<div class="footer">
				
				<div class="right-content">
					<p>Healthy  &	 All Rights Reserved | Design By Wansoon</p>
				</div>
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

