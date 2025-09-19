<%-- 
    Document   : Old_Record
    Created on : Jul 17, 2014, 5:11:16 PM
    Author     : mvinoth
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DbConnection"%>

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
                    	<div class="header">
				<div class="wrap">
				<div class="logo">
					<a href="#"><img src="images/logo.png" title="logo" /></a>
				</div>
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
                                    <br>
                                    
                                    <div class="contact-info">
					<ul>
					User Id :<%=id%> &nbsp;&nbsp;  Aadhar_ID :<%=care%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             
						
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
                         <li><a href="User_Counsel_Home.jsp" class="smoothScroll">HOME</a></li>
                         <li><a href="User_Counsel_Home.jsp" class="smoothScroll">NEW COUNSELING</a></li>
                         <li><a href="Old_Record.jsp" class="smoothScroll">OLD RECORDS</a></li>
                         <li><a href="Doctor_Replay.jsp" class="smoothScroll">DOCTOR REPLY</a></li>
                         <li><a href="logout.jsp" class="smoothScroll">LOGOUT</a></li>
                        
                    </ul>
               </div>

          </div>
     </section>


     <br>	
				
				
		
		<div class="clear"> </div>
			<!--start-image-slider---->
				
					<!--End-image-slider---->
		    <div class="clear"> </div>
		
		    	<div class="content">
                               <div class="container1"> 
                                          
                                            <br>
                            <center>
                                 <br><br><b><h4><font size="5px" color="#1E90FF" >PATIENT TREATMENT RECORD</font></h4></b> 
                               <br>
        <br>
        <div class="form-wrapper">   
                                      
                                <table border="2">
                                   
                                    <tr><th>S_No</th><th>U_Id</th><th>User Name</th><th>Hospital_Id</th><th>Doctor_Id</th><th>Symptom</th><th>Status</th></tr>
                           
                            <%
                                        String query="Select * from user_treatment where U_ID='"+id+"'";
                                        ResultSet rd=db.Select(query);
                                        while(rd.next())
                                        {
                                         %>
                                         <tr><td><%=rd.getInt("S_No")%></td>
                                         <td><%=rd.getInt("U_ID")%></td>
                                         <td><%=rd.getString("U_Name")%></td>
                                         <td><%=rd.getInt("H_ID")%></td>
                                           <td><%=rd.getInt("D_ID")%></td>
                                           <td><%=rd.getString("Symptom")%></td>
                                            <td><%=rd.getString("Status1")%></td>
                                         </tr>
                                         <%
                                        }
                                        %>
                                        <tr><td></td></tr>
                                </table>
                                        <br><br><br><font color="red" style="size: A4">* STATUS 1- RECEIVED REPLY FROM DOCTOR <br>STATUS 0 - REPLY PENDING </center>
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
                               </div>
                        </div>
						 <div class="clear"> </div>
  
	
		<div class="clear"> </div>
		
			<div class="clear"> </div>
			
		</div>
                    <%
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

