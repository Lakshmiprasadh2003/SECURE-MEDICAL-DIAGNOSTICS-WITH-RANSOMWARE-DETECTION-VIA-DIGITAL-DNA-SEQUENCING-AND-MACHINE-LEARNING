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
					
						&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Doctor Id :<%=id%>  &nbsp;&nbsp;&nbsp; Doctor Name :<%=care%>
                                                
                                             
						
                                                <%
                                        ResultSet rs1=db.Select("SELECT * FROM emerency where doc_id='"+care+"'");
                                        while(rs1.next())
                                        {
                                            %>
                                                 &nbsp;&nbsp;&nbsp;&nbsp;<font color="black"><a href="patient_dete.jsp?id=<%=rs1.getString("aadhar_id")%>&name=<%=rs1.getString("uname")%>">Emergency Patient :<%=rs1.getString("aadhar_id")%>-<%=rs1.getString("uname")%></a>
                                                <%
                                        }
                                        %>
					
				</div>
				<div class="clear"> </div>
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
                         <li><a href="upload_dna.jsp" class="smoothScroll">UPLOAD DNA</a></li>
                         <li><a href="Compare_dna.jsp" class="smoothScroll">COMPARE DNA</a></li>
                         <li><a href="View_Report.jsp" class="smoothScroll">VIEW REPORT</a></li>
                         <li><a href="logout.jsp" class="smoothScroll">LOGOUT </a></li>
                        
                    </ul>
               </div>

          </div>
     </section> 
     <br>

				
		
		<div class="clear"> </div>
			<!--start-image-slider---->
				
					<!--End-image-slider---->
		    <div class="clear"> </div>
		    <div class="wrap">
		    	<div class="content">
                            
				<div class="container1"> 
                                            <br>			
						 <div class="clear"> </div>
                                                   <center>
                                            <br>
                                              <center><br><br><b><h4><font size="5px" color="#1E90FF" >DOCTOR COUNSEL FORM</font></h4></b><br>
                                             <br>
        <br>
        <div class="form-wrapper">   
                                            <form action="Doctor_Response" method="post">
                                            <table>
                                                  <%
                                        String s="0";
                                        String query="SELECT * FROM user_treatment where D_ID='"+id+"' and Status1='"+s+"'";
                                        ResultSet rf=db.Select(query);
                                      while(rf.next())
                                        {
                                        %>
                                      <tr>
                                                    <td> S_No</td> <td>:</td><td><input type="text" value="<%=rf.getInt("S_No")%>" name="S_No"  style="width: 204px;" readonly> </td>
                                                </tr>
                                                <tr>
                                                    <td> User ID</td> <td>:</td><td><input type="text" value="<%=rf.getInt("U_ID")%>" name="id1"  style="width: 204px;" readonly> </td>
                                                </tr>
                                                 <tr>
                                                     <td> User </td> <td>:</td><td><input type="text" value="<%=rf.getString("U_Name")%>" name="name"  style="width: 204px;" readonly> </td>
                                                </tr>
                                                 <tr>
                                                     <td> Hospital Id</td> <td>:</td><td><input type="text" value="<%=rf.getInt("H_ID")%>" name="H_id"  style="width: 204px;" readonly> </td>
                                                     
                                                </tr>
                                                   <tr>
                                                     <td> Doctor Id</td> <td>:</td><td><input type="text" value="<%=rf.getInt("D_ID")%>" name="D_id"  style="width: 204px;" readonly> </td>
                                                     
                                                </tr>
                                                 <tr><td>Symptoms</td><td>:</td><td><textarea style="height: 69px; width: 204px" id="Sysm" name="Sysm" required readonly><%=rf.getString("Symptom")%></textarea></td></tr>
                                                 <tr><td>Doctor Response</td><td>:</td><td><textarea style="height: 69px; width: 204px" id="Resp" name="Resp" required></textarea></td></tr>
                                            </table>
                                                     <br><br><br> <input type="submit" value="SUBMIT"> 
                                  
                                                    
                                        <%
                                            
                                        }
                                            %>
                                           </form>
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
                                
                                <br>
                                <br>
                                <br>
                                <br>
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
     
     
     <br>
     <br>
     <br>
     
         </body>
</html>

