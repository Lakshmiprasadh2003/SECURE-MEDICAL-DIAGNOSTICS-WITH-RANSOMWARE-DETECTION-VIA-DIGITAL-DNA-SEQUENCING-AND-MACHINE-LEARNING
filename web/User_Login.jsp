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
                         <li><a href="index.html" class="smoothScroll">HOME</a></li>
                         <li><a href="User_Register.jsp" class="smoothScroll">USER REGISTRATION</a></li>
                          <li><a href="User_Login.jsp" class="smoothScroll">USER LOGIN</a></li>
                    </ul>
               </div>
          </div>
     </section>   
     <br>
                <div class="clear"> </div>
		    <div class="wrap">
		    	<div class="content">
                             <div class="container1">
        <h3>USER LOGIN PAGE</h3>
        <br>
        <br>
        <div class="form-wrapper">
       <form action="User_Check" method="post" onsubmit="JavaScript:return AdminValidate(true);">
               
               
                <div class="form-item">
                    <label for="fullname">AADHAAR ID :</label>
              <input type="text" value="" id="U_Name" name="U_Name" required pattern="[0-9]{16}"style="width: 204px;">
                </div>
                <div class="form-item">
                    <label for="username">PASSWORD:</label>
                <input type="password" value="" id="U_Pass" name="U_Pass" style="width: 204px;">
                </div>
              
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="register" type="submit">SUBMIT</button> 
     
                <br>
              
                
              
            </form>
        </div>

                            <br> 
                            
                            
                             <!-- <form action="User_Check" method="post" onsubmit="JavaScript:return AdminValidate(true);">
                                    <center><br><b><h4><font size="6px" color="#1E90FF" >USER LOGIN PAGE</font></h4></b>
                                 
                                  <br><table border="5">
                                          
                    <tr><td> <font color="Black">AADHAAR ID :</td><td><input type="text" value="" id="U_Name" name="U_Name" required pattern="[0-9]{16}"></td></tr>
                    <tr></tr><tr></tr>
                    <tr><td><font color="Black">PASSWORD    :</td><td><input type="password" value="" id="U_Pass" name="U_Pass"></td></tr>
                
                    </table>
                                      <br><br>
                                      <input type="submit" value="Submit"></center>
                                        </form>-->
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
                                        <script >
        function AdminValidate()
        {
            var ss = document.getElementById("U_Name").value;
            if (ss === "")
            {
                alert("User Name Can't be Empty");
                document.getElementById("U_Name").value.focus;
                return false;
            }
            var ss1 = document.getElementById("U_Pass").value;
            if (ss1 === "")
            {
                alert("Password Can't be Empty");
                return false;
            }
            return true;
        }
                                </script>
                                  
						 <div class="clear"> </div>
  
		</div>
		<div class="clear"> </div>
		
			<div class="clear"> </div>
			<div class="footer">
				
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

