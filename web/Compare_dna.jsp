<%-- 
    Document   : Compare_dna
    Created on : Feb 23, 2018, 11:19:28 AM
    Author     : user
--%>

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
                   <script type="text/javascript">
            $(document).ready(function() {

                $("#multiselect").dropdownchecklist({
                    onItemClick: function(checkbox, selector) {
                        var justChecked = checkbox.prop("checked");
                        var checkCount = (justChecked) ? 1 : -1;
                        for (i = 0; i < selector.options.length; i++) {
                            if (selector.options[i].selected)
                                checkCount += 1;
                        }
                        if (checkCount > 3) {
                            alert("Limit is 3 fruits to choose");
                            throw "too many";
                        }
                    }, width: 250
                });
            });

            function data(oCheckbox)
            {
                var checkk = oCheckbox.value;
                window.location.href = "http://localhost:8084/DNA/compare.jsp?data=" + checkk;

            }
            function data1(oCheckbox)
            {
                var checkk = oCheckbox.value;
                window.location.href = "http://localhost:8084/DNA/compare.jsp?data1=" + checkk;

            }

            var requestaa;
            function Select_Another_SETS(S_SET)
            {
                var url = "Get_Anothers.jsp?val=" + S_SET;
                if (window.XMLHttpRequest) {
                    requestaa = new XMLHttpRequest();
                }
                else if (window.ActiveXObject) {
                    requestaa = new ActiveXObject("Microsoft.XMLHTTP");
                }

                try {
                    requestaa.onreadystatechange = getInfo;
                    requestaa.open("GET", url, true);
                    requestaa.send();
                } catch (e) {
                    alert("Unable to connect to server");
                }
            }

            function getInfo() {
                if (requestaa.readyState == 4) {
                    var val = (requestaa.responseText).toString();
                    var tval = val.split(",");
                    var tg = tval.length;
                    var mnad = document.getElementById('multiselect');
                    var ee = 2;
                    while (mnad.length >= ee) {
                        mnad.remove(mnad.length - 1);
                    }
                    for (var i = 0; i < (tg - 1); i++)
                    {
                        var T_tval = tval[i].split("-");
                        var option = document.createElement("option");
                        option.value = T_tval[0];
                        option.text = T_tval[1];
                        mnad.add(option);
                    }
                }
            }

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
                         <li><a href="Already_User.jsp" class="smoothScroll">PATIENT LIST </a></li>
                         <li><a href="Add_Report.jsp" class="smoothScroll">ADD REPORT</a></li>
                         <li><a href="logout.jsp" class="smoothScroll">LOGOUT </a></li>
                         
                    </ul>
               </div>

          </div>
     </section>
     <br>
     <br>
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
                    <form action="Mul_Compare.jsp" method="post">
                        <%
                            //String name = null;
                            String name1 = null;
                            int i = 1;
                            String data = request.getParameter("data");
                            if (data != null) {
                                session.setAttribute("data", data);
                            }
                            String dataset = null;
                           // DbConnection db = new DbConnection();
                            ResultSet rs1 = db.Select("select * from add_upload1");
                        %>
                       
                                  
                                
        <br>
        <br>
        <div class="form-wrapper">    
                        
                        <table><tr><th>Select Data Set 1</th><th>Select Data Set 2</th></tr>
                            <tr><td>       <select name="data1" onchange="Select_Another_SETS(this.value);" style="width: 250px;">           <%

                                while (rs1.next()) {%>
                                <option value="select">Select User ID</option>
                                        <option value="<%=rs1.getInt(1)%>"><%=rs1.getString("UName")%> </option>

                                        <%
                                                i++;
                                            }
                                        %>
                                    </select></td>
                                <td>  <select name="multiselect" id="multiselect" class="multiselect" multiple style="height: 150px; width: 250px;">   

                                    </select></td>
                            </tr>
                            <tr>
                                <td><input type="submit" value="Compare"></td>
                            </tr>

                        </table>

                    </form>
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

