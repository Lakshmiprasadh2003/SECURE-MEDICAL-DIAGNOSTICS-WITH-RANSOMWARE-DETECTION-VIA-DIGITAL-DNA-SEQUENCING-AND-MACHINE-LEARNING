<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Connection.DbConnection1"%>
<%@page import="java.util.Date"%>
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
					
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Doctor Id :<%=id%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Doctor Name :<%=care%>
                                           
					
					
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
                         <li><a href="Add_Report.jsp" class="smoothScroll">ADD REPORT </a></li>
                         <li><a href="logout.jsp" class="smoothScroll">LOGOUT </a></li>
                    </ul>
               </div>

          </div>
     </section>


				<div class="clear"> </div>
				
		    <div class="clear"> </div>
		    <div class="wrap">
		    	<div class="content">
                            
                             <br>  
                            <div class="container1">
     
        <h3>DOCTOR ADD REPORT FORM</h3>
        <br>
        <br>
        <div class="form-wrapper">
						 <%
                                                Date dd = new Date();

                                                SimpleDateFormat std = new SimpleDateFormat("yyyy-MM-dd");
                                            %>
	
						 <div class="clear"> </div>
                                                   <center>
                                            <br>
                                       
                                          
                                             <form name="form" enctype="multipart/form-data" action="Add_Report" method="post" onsubmit="return ValidateDate12();">
                                  <%
                                                ResultSet rs21=db.Select("SELECT * FROM booking_service WHERE D_ID ='"+session.getAttribute("D_Id")+"'");
        
              
                     %>  
                      <script>
        function ValidateDate12()
        {

    
                                                           var h=document.getElementById("hh").value;
                                                              var m=document.getElementById("mm").value;
                                                              var s=document.getElementById("ss").value;
                                                              var ft=h+":"+m+":"+s;
                                                              document.getElementById("ftime").value=ft;
                                                      
    //alert(document.getElementById("ftime").value);                                   
   return true;
        }
        
        
    </script>
     <script>
                                                          function timechange()
                                                          {
                                                              var h=document.getElementById("hh").value;
                                                              var m=document.getElementById("mm").value;
                                                              var s=document.getElementById("ss").value;
                                                              var ft=h+":"+m+":"+s;
                                                              document.getElementById("ftime").value=ft;
                                                              
                                                          }
                                                     </script>
                                                     <table> 
                     <tr><td>User Name</td><td><select name="Ano">
                                                    <%while(rs21.next())
                                                    {
                                                                        %>
                                                   <option value="<%=rs21.getString("U_Name")%>"><%=rs21.getString("U_Name")%></option>
                                                        
                                                        <%
                                                    }
                                                        DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
Calendar cal = Calendar.getInstance();
System.out.println(dateFormat.format(cal.getTime()));
String ss=dateFormat.format(cal.getTime()).toString();
String ss1[]=ss.split(":");
System.out.println(ss1[0]+","+ss1[1]+","+ss1[2]);
int h=Integer.parseInt(ss1[0]);
int m=Integer.parseInt(ss1[1]);
int s=Integer.parseInt(ss1[2]);
                                                        %>
                                                </select></td></tr>
                                              <tr><td>Date</td><td><input type="text" id="C_Date" name="cdate" value="<%=std.format(dd) %>" readonly></li> 
                                                <tr><td>Report Type</td><td><select name="rprt">
                                                     <option>Scan</option>
                                                      <option>X-Ray</option>
                                                      <option>ECG</option>
                                                       <option>TS</option>
                                                        <option>Others</option>
                                                       
                                                      
                                                    </select></td></tr>
                                                 <tr><td>Description</td><td><input type="text" id="des" name="des" value="" required></td></tr>
                                                  <tr><td>Image</td><td><input type="file" id="file1" name="file1" accept="image/*" required></td></tr>
                                                <tr><td>Consultant Doctor</td><td>
                                                      <select name="doctor" id="doctor" >
                                                <% 
                                                                     
                                                                  
                                                                       
                                                    %>
                                                    <option value="<%=session.getAttribute("D_Id")%>"><%=session.getAttribute("D_Id")%></option>
                                            <%
                                                                        %></select></td></tr>
                                                    
                                                <tr><td>Set Time</td><td>
                                                      <select name="hh" id="hh" onchange="return timechange()">
                                                        
                                                          <%
                                                                       for(int i=h;i<=24;i++)
                                                                       {
                                                                       %>
                                                          <option value="<%=i%>"><%=i%></option>
                                                          <%}
                                                                           %>
                                                      </select>
                                                      <select name="mm" id="mm" onchange="return timechange()">
                                                     
                                                          <%
                                                                       for(int i=m;i<=60;i++)
                                                                       {
                                                                       %>
                                                          <option value="<%=i%>"><%=i%></option>
                                                          <%}
                                                                           %>
                                                      </select>
                                                   <select name="ss" id="ss" onchange="return timechange()">
                                                          
                                                          <%
                                                                       for(int i=s;i<=60;i++)
                                                                       {
                                                                       %>
                                                          <option value="<%=i%>"><%=i%></option>
                                                          <%}
                                                                           %>
                                                      </select></td></tr>
                                                      <script>
                                                          function timechange()
                                                          {
                                                              var h=document.getElementById("hh").value;
                                                              var m=document.getElementById("mm").value;
                                                              var s=document.getElementById("ss").value;
                                                              var ft=h+":"+m+":"+s;
                                                              document.getElementById("ftime").value=ft;
                                                              
                                                          }
                                                      </script>
                                                   
                                                  </li>
                                               <tr><td>Time</td><td><input type="text"  id="ftime" name="ftime" value="" required readonly></td></tr>
                                             </table>
                                                    <input type="submit" value="ADD DETAILS">
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
		<div class="clear"> </div>
		
			<div class="clear"> </div>
			<div class="footer">
				
				
				<div class="clear"> </div>
			</div>
		</div>
                    <%
                                    }
                                    else
                                    {
                                        session.setAttribute("msg", "Session Out Please Login");
                                        response.sendRedirect("Provider.jsp");
                                    }
                                        %>
        </table>
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

