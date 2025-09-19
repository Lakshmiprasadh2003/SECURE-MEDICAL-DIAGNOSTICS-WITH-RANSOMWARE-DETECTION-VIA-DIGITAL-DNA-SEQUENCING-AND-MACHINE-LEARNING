
<%-- 
    Document   : compar
    Created on : Apr 13, 2015, 5:41:11 PM
    Author     : suganya
--%>

<%@page import="GA.GA"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
		  <link rel="stylesheet" href="css/style3.css" /> 
		
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
                                    Integer id=(Integer)session.getAttribute("D_Id");
                                    String name=(String)session.getAttribute("Doctor");
                                                     session.setAttribute("D_Id",id);
                                      session.setAttribute("Doctor",name);
                                    DbConnection db=new DbConnection();
                                    System.out.println(id+","+name);
                                    ResultSet rs=db.Select("select * from provider_doctors where S_No='"+id+"' and D_Name='"+name+"'");
                                    if(rs.next())
                                    {
                                        String care=rs.getString("D_Name");
                                    
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
                         <li><a href="Doctor_Home.jsp" class="smoothScroll">HOME</a></li>
                         <li><a href="Doctor_Home.jsp" class="smoothScroll">NEW COUNSEL PATIENT</a></li>
                         <li><a href="Already_User.jsp" class="smoothScroll">PATIENT LIST</a></li>
                         <li><a href="Add_Report.jsp" class="smoothScroll">ADD REPORT</a></li>
                         <li><a href="logout.jsp" class="smoothScroll">LOGOUT </a></li>
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
                            
                            <div class="container1"> 
                                            <br>	
                                            
                <%
                   // String name = null;
                  // String name1 = null;
                    String dataset = null;
                    int match = 0, mismatch = 0;

                    DbConnection db2 = new DbConnection();
                    String data11 = request.getParameter("data1");
                    System.out.println(data11);

                    // System.out.print("data1"+data11);
                    ResultSet rs2 = db2.Select("select * from add_upload1 where S_No=" + data11);
                    while (rs2.next()) {
                        name = rs2.getString("UName");
                        dataset = rs2.getString("DataSet");
                        
                    }

                    ArrayList RF = new ArrayList();
                     String name1 = request.getParameter("Name");
                    ResultSet rs21 = db2.Select("select * from add_upload");
                    while (rs21.next()) {
                        RF.add(rs21.getString("S_No"));
                        name1 = rs21.getString("Name");
                        String dat1 = "#" + rs21.getString("DataSet");
                        
                        char d2[] = dat1.toCharArray();

//Algorithm Call
                        GA ga = new GA();
                        ga.Analysis_DNA(dataset);
                        ga.Analysis_DNA(dat1);
                        
                %>

 <br>
        <br>
        <div class="form-wrapper">  
                <table>

                    <tr>
                        <td><textarea rows="15" cols="60" name="dat1"><%=dataset%></textarea></td>
                        <td><textarea rows="15" cols="60" name="dat2"><%=dat1%></textarea></td>
                      <!--  <td><textarea rows="15" cols="60" name="dat2"><%=name1%></textarea></td>-->
                         
                    </tr>
                    <tr>
                        <td>
                            Data Set Lenth : <%=dataset.length()%>
                        </td>
                        <td>
                            Data Set Length : <%=dat1.length()%>
                            <br>
                           NAME : <%= name1 %>
                        </td>
                        
                    </tr>
                    <tr>

                    </tr>

                </table>
                <%
                    char d1[] = dataset.toCharArray();
                    int j = d2.length - 1;
                    for (int i = d1.length - 1; i > 0; i--) {
                        if (j != 0) {
                            //out.println("hai");
                            if (d1[i] == d2[j]) {
                                match++;

                                // out.println("["+i+"]["+j+"]="+d1[i]+","+d2[j]+"Match");    
                            } else {
                                mismatch++;
                                // out.println("["+i+"]["+j+"]="+d1[i]+","+d2[j]+"MisMatch");    
                            }

                            j--;

                        } else {
                            continue;
                        }

                    }
                    int maxlen = Math.max(d1.length, d2.length);
                    double m_tches = ((double) match / (double) maxlen) * 100.0;
                    double mis_tches = ((double) mismatch / (double) maxlen) * 100.0;

                %>
                <br/><br/><br/>
                MATCH Percentage : <%=m_tches%>
                 <br/><br/><br/>
            <!--   MIS MATCH Percentage : <%=mis_tches%>-->
                <hr/>
                <br/>
                <%
                    }
                    //}
                %>
           </div>
                            </div>
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

