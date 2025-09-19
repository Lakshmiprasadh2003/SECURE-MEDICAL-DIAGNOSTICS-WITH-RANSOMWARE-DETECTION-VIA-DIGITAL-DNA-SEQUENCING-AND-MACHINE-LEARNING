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
				</div>
			</div>
				<div class="clear"> </div>
				
		
		<div class="clear"> </div>
			<!--start-image-slider---->
				
					<!--End-image-slider---->
		    <div class="clear"> </div>
		    <div class="wrap">
		    	<div class="content">
                            <script>
                             function Validate1()
              {
              
  var Service = document.getElementsByName("Service");
             
    var formValid1 = false;

    var i = 0;
    while (!formValid1 && i < Service.length) {
        if (Service[i].checked) formValid1 = true;
        i++;        
    }

    if (!formValid1) 
        {
            alert("Must select Service!");
              return false;
        }
  return true;
                     
              }
              </script>
              <script language="javascript" type="text/javascript">
        var xmlHttp
        var xmlHttp
        function showState(str) {
            // document.getElementById("state").innerHTML="";
            if (typeof XMLHttpRequest != "undefined") {
                xmlHttp = new XMLHttpRequest();
            }
            else if (window.ActiveXObject) {
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            if (xmlHttp == null) {
                alert("Browser does not support XMLHTTP Request")
                return;
            }
            var url = "Senti_word";
            url += "?count=" + str;
            xmlHttp.onreadystatechange = stateChange;
            xmlHttp.open("GET", url, true);
            xmlHttp.send(null);
        }

      

        function ch() {
            if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
                document.getElementById("rate").innerHTML = xmlHttp.responseText
            }
        }




        function stateChange() {
            if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
                document.getElementById("state").innerHTML = xmlHttp.responseText
            }
        }

     
    </script> 
    
    
      <script language="javascript" type="text/javascript">
        var xmlHttp
        var xmlHttp
        function showState1(str) {
             //document.getElementById("state").innerHTML="";
            if (typeof XMLHttpRequest != "undefined") {
                xmlHttp = new XMLHttpRequest();
            }
            else if (window.ActiveXObject) {
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            if (xmlHttp == null) {
                alert("Browser does not support XMLHTTP Request")
                return;
            }
            var url = "Senti_word1";
            url += "?count=" + str;
            xmlHttp.onreadystatechange = stateChange1;
            xmlHttp.open("GET", url, true);
            xmlHttp.send(null);
        }

      

        function ch() {
            if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
                document.getElementById("rate").innerHTML = xmlHttp.responseText
            }
        }




        function stateChange1() {
            if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
                document.getElementById("state1").innerHTML = xmlHttp.responseText
            }
        }

     
    </script> 
    
              <form action="Add_Bookin_Service.jsp" method="post" onsubmit="return Validate1(true);" name="form">
                            <%
                                        String hh=request.getParameter("B_id");
                                        session.setAttribute("B_id", hh);
                                        int B_id=Integer.parseInt(hh);
                                        ResultSet ts=db.Select("Select * from provider_details where S_No='"+B_id+"' ");
                                        
                                        %>		
						 <div class="clear">
                                        <center>
                                             <br><b><h4><font size="6px" color="#1E90FF">PROVIDER DETAILS</font></h4></b>
                                           
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
                                        
                                         ResultSet ts1=db.Select("Select * from provider_hospital where Care_Id='"+B_id+"' ");
                                        
                                   %>
                                        </table>
                                       <br><b><h4><font size="6px" color="#1E90FF">HOSPITAL DETAILS</font></h4></b>
                                    
                                          <table border="2">
                                              <tr>
                                                  <td>Select Hospital Name</td><td>
                                                      <select name="Hospital" onchange="showState(this.value)">
                                                       
                                                          <option value="1">Select Hospital</option>                                  
                                           <%
                                        while(ts1.next())
                                        {
                                            %>
                                           <option value="<%=ts1.getString("H_Name")%>"><%=ts1.getString("H_Name")%></option>
                                                    
                                           <%
                                        }
                                        %>
                                          </select>
                                                  </td>
                                              </tr>
                                        </table>
                                      
                                          <div id="state">
                                          </div>
                                  
                                          <div id="state1"></div>
                                        <input type="SUBMIT" value="SUBMIT">
                                      
                                        </center>
					 </div>
                                          </form>
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

