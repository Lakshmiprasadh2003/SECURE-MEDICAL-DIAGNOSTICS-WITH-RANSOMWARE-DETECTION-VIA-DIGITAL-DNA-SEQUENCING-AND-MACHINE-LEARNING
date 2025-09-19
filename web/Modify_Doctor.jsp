<%-- 
    Document   : View_Doctor
    Created on : Jul 11, 2014, 9:59:35 AM
    Author     : mvinoth
--%>

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
      <link rel="stylesheet" href="css/style2.css" />
     <link rel="stylesheet" href="css/tooplate-style.css">

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
                                    Integer id=(Integer)session.getAttribute("P_Id");
                                    String name=(String)session.getAttribute("provider");
                                                     session.setAttribute("P_Id",id);
                     session.setAttribute("provider",name);
                                    DbConnection db=new DbConnection();
                                    System.out.println(id+","+name);
                                    ResultSet rs=db.Select("select * from provider_details where S_No='"+id+"' and Username='"+name+"'");
                                    if(rs.next())
                                    {
                                        String care=rs.getString("Health_name");
                                    
                                    %>
				<div class="contact-info">
					
						  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Health Care Id :<%=id%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Health Care Name :<%=care%>
                                              	
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
                         <li><a href="Provider_Home.jsp" class="smoothScroll">HOME</a></li>
                         <li><a href="Add_Doctors.jsp" class="smoothScroll">ADD DOCTORS</a></li>
                         <li><a href="View_Doctor.jsp" class="smoothScroll">VIEW DOCTORS</a></li>
                         <li><a href="Modify_Doctor.jsp" class="smoothScroll">MODIFY DOCTORS</a></li>
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
                            <br><br>
                          <center> <br><br><b><h4><font size="5px" color="#1E90FF" >DOCTORS DETAILS</font></h4></b>
                            <br>
                            
                             <br>
                            
                             <br>
        <div class="form-wrapper">
                               <br>
                            <table border="3">
                                <tr><th>DOCTORS ID</th><th>DOCTORS NAME</th><th>DOCTORS DESCRIPTION</th><th>CONTACT NUMBER</th><th>HOSPITAL NAME</th><th>MODIFY</th><th>DELETE</th></tr>
                                <%
                                      ResultSet rs1=db.Select("select * from provider_doctors where Care_Id='"+id+"'");
                                      while(rs1.next())
                                      {
                                          
                                        %>
                                <tr><td><%=rs1.getInt("S_No")%></td><td><%=rs1.getString("D_Name")%></td><td><%=rs1.getString("D_Details")%></td>
                                <td><%=rs1.getString("Contact")%></td>  <td><%=rs1.getString("Hos_Name")%></td>
                                 <td><a href="Modify2.jsp?id=<%=rs1.getInt("S_No")%>">Click Here</a></td>
                                  <td><a href="Delete2.jsp?id=<%=rs1.getInt("S_No")%>">Click Here</a></td>
                                </tr>
                                
                                <%
                                      }
                                        
                                        %>
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
				
                            </form>
                                    <script>
                                        function Validate_Date()
                                        {
                                            var S_Name=document.getElementById("S_Name").value;
                                             if(!S_Name.match(/^[a-zA-Z ]+$/))
                            {
                                alert("Invalid Service Name Don't Use Numbers")
                                return false;
                            }
                            var Desc=document.getElementById("Desc").value;
                                             if(!Desc.match(/^[a-zA-Z ]+$/))
                            {
                                alert("Invalid Service Description Don't Use Numbers")
                                return false;
                            }
                               var Amount=document.getElementById("Amount").value;
                               var len=Amount.length;
                                             if(!Amount.match(/^\d{10}$/))
                                             {                                               
                                             
                                alert("Invalid Amount")
                                return false;
                            }
                              
                                           return true; 
                                        }
                                    </script>
						 <div class="clear"> </div>
  
		</div>
		<div class="clear"> </div>
		
			<div class="clear"> </div>
			
		</div>
                    <%
                                    }
                                    else
                                    {
                                        session.setAttribute("msg", "Session Out Please Login");
                                        response.sendRedirect("Provider.jsp");
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


