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
        <link rel="stylesheet" href="css/style2.css" /> 
		
		
		<script src="js/responsiveslides.min.js"></script>
                  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

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
					
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Id :<%=id%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Aadhar ID:<%=care%>
                                               
						
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
                         <li><a href="User_Phr.jsp" class="smoothScroll">ADD PHR</a></li>
                         <li><a href="Modify_Phr.jsp" class="smoothScroll">MODIFY PHR DETAILS</a></li>
                         <li><a href="User_Modify.jsp" class="smoothScroll">VIEW DETAILS</a></li>
                         <li><a href="logout.jsp" class="smoothScroll">LOGOUT</a></li>
                        
                    </ul>
               </div>

          </div>
     </section>

  
     <br>
	
				<div class="clear"> </div>
				
		
		<div class="clear"> </div>
			<!--start-image-slider---->
				
					<!--End-image-slider---->
		    <div class="clear"> </div>
		    <div class="wrap">
		    	<div class="content">
                            
                             <div class="container1"> 
                                            <br>
                            <center>
                                <%
                                ResultSet rf=db.Select("select * from user_phr_details where User_Name='"+care+"' and User_Id='"+id+"'");
                                        if(rf.next())
                                        {%>
                                
                                    <br><br>
                                   
                                    
                                 
                                    <br>
                                               
		  <h3>VIEW PERSONAL HEALTH RECORD INFORMATION</h3>
        <br>
        <br>
        <div class="form-wrapper">  
                                
                                    <table border="3">
                                        <tr>
                                            <td>User Name</td><td>:</td><td><%=name%></td>
                                        </tr>
                                        <tr>
                                            <td>User Id</td><td>:</td><td><%=id%></td>
                                        </tr>          
                                        
                                        <tr>
                                            <td>Mobile No:</td><td>:</td><td><%=rf.getString("U_Ph")%></td>
                                        </tr>          
                                            
                                         <tr>
                                             <td>Date Of Birth</td><td>:</td><td> <%=rf.getString("DOB")%>
                                                   
                                
                                        </tr>
                                        
                                          <tr>
                                                <td>Age </td><td>:</td><td><%=rf.getString("age")%></td>
                                        </tr> 
                                         <tr>
                                                <td>Blood Group </td><td>:</td><td><%=rf.getString("BloodGroup")%></td>
                                        </tr> 
                                          <tr>
                                                <td>Any Surgery </td><td>:</td><td><%=rf.getString("Opeartion")%></td>
                                        </tr> 
                                         <tr>
                                                <td>Major Issues </td><td>:</td><td><%=rf.getString("Issuses")%></td>
                                        </tr>
                                               <tr>
                                                <td>BP Level </td><td>:</td><td><%=rf.getString("Bp")%></td>
                                        </tr>
                                             <tr>
                                                <td>Height </td><td>:</td><td><%=rf.getString("height")%></td>
                                        </tr>
                                         <tr>
                                                <td>Weight </td><td>:</td><td><%=rf.getString("weight")%></td>
                                        </tr>
                                           <tr>
                                                <td>Update Date </td><td>:</td><td><%=rf.getString("C_date")%></td>
                                        </tr>
                                    </table>
                                       
                               
                            </center>
                                </div>
                             </div>
							
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
			

                    <%
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

