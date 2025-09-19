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
                        <div class="content" >
                            
                             <div class="container1">
     
        <h3>USER REGISTRATION</h3>
        
        <div class="form-wrapper">
       <form action="register_user" method="post" onsubmit="return form_validation(true);">
               
               
                <div class="form-item">
                    <label for="fullname">USER NAME:</label>
               <input type="text" value="" id="U_Name" name="U_Name" style="width: 204px;" required>
                </div>
                <div class="form-item">
                    <label for="username">PASSWORD:</label>
             <input type="password" value="" id="U_pass" name="U_Pass" style="width: 204px;" required>
                </div>
                <div class="form-item">
                    <label for="username">AADHAAR  ID:</label>
                   <input type="text" value="" id="aid" maxlength="16" name="aadhar" style="width: 204px;" required pattern="[0-9]{16}" required title="Enter 16 digit number">
                </div>

                </div>
             <div class="form-item">
                    <label for="email">TO MAIL</label>
               <input type="text" value="" id="U_Adrr" name="U_Adrr" style="width: 204px;" required>
                </div>
                <div class="form-item">
                    <label for="email">TO CONTACT</label>
                 <input type="text" value="" id="U_Ph" name="U_Ph" style="width: 204px;" required>
                </div>
                <div class="form-item">
                    <label for="email">ADDRESS</label>
                   &nbsp;&nbsp;&nbsp;&nbsp;<textarea style="height: 69px; width: 204px" id="desc" name="desc" required></textarea>
                </div>
         <div class="form-item">
                    <label for="gender">GENDER:</label>
                    
                    <input type="text" value="" id="gender" name="gender" style="width: 204px;" required>
                </div>   
                  
                    <div class="form-item">
                    <label for="gender">QUALIFICATION</label>
                   &nbsp;&nbsp;&nbsp;&nbsp; <select name="Quali" id="Quali" style="width: 204px;" >
                      <option>UG DEGREE</option>
                                                          <option>PG DEGREE</option>
                                                            <option>HIGHER SECONDARY</option>
                                                              <option>SSLC</option>
                                                               <option>FIRST-SSLC</option>
                                                                <option>NO</option>
                                                    </select>
                </div>  
        
        <div class="form-item">
                    <label for="email">PROFESSION</label>
                 <input type="text" value="" name="Prof" id="Prof" style="width: 204px;" required onchange="displayDate(this)">
                </div>
        <br>
            <input type="Submit" value="Register">&nbsp;    <input type="Reset" value="Clear">    
               
                <br>
              
        </form>
        </div>
                            <br>             
                            
                            <!--<form action="register_user" method="post" onsubmit="return form_validation(true);">
                                  <center><br><b><h4><font size="6px" color="#1E90FF">USER REGISTRATION</font></h4></b>
                                
                            <br>
                          
                                <table border="3">
                                    <tr><td> User Name</td><td>:</td><td><input type="text" value="" id="U_Name" name="U_Name" style="width: 204px;" required></td></tr>
                                    <tr><td>  PassWord</td><td>:</td><td><input type="password" value="" id="U_pass" name="U_Pass" style="width: 204px;" required></td></tr>
                                    <tr><td>Aadhar  Id</td><td>:</td><td><input type="text" value="" id="aid" maxlength="16" name="aadhar" style="width: 204px;" required pattern="[0-9]{16}" required title="Enter 16 digit number"></td></tr>
                                    <tr><td>  To mail</td><td>:</td><td><input type="text" value="" id="U_Adrr" name="U_Adrr" style="width: 204px;" required></td></tr>
                                    <tr><td>To Contact</td><td>:</td><td><input type="text" value="" id="U_Ph" name="U_Ph" style="width: 204px;" required></td></tr>
                                    <tr><td>Address</td><td>:</td><td><textarea style="height: 69px; width: 204px" id="desc" name="desc" required></textarea></td></tr>
                                    <tr><td> Gender</td><td>:</td><td><input type="text" value="" id="gender" name="gender" style="width: 204px;" required></td></tr>
                                    <tr>
                                                <td>Qualification</td><td>:</td><td><select name="Quali" id="Quali" style="width: 204px;" >
                                                        <option>UG DEGREE</option>
                                                          <option>PG DEGREE</option>
                                                            <option>HIGHER SECONDARY</option>
                                                              <option>SSLC</option>
                                                               <option>FIRST-SSLC</option>
                                                                <option>NO</option>
                                                    </select></td>
                                        </tr>  
                                            <tr>
                                                <td>Profession </td><td>:</td><td><input type="text" value="" name="Prof" id="Prof" style="width: 204px;" required onchange="displayDate(this)"></td>
                                        </tr> 
              <select name="typ" id="typ" style="width: 209px"  hidden >
                                                     <option value="ddd">SELECT</option>
                                                     <option value="secure">SECURE USER</option>
                                                 <option value="secure">NON-SECURE</option>
                                                 </select>
                                                      
                                </table>
                            <br>
                           
                                 <input type="Submit" value="Register">&nbsp;       
                                                                    <input type="Reset" value="Clear">
                                 </center>
                            
                            </form>-->
						 <div class="clear"> </div>
                                                
                                                 <script>
                                                     function form_validation()
                                                     {
                                                          var H_Name=document.getElementById("U_Name").value;
                                             
                        if(!H_Name.match(/^[a-zA-Z ]+$/))
                            {
                                alert("Invalid User Name Don't Use Numbers")
                                return false;
                            }
                    
                      
                             var Ph=document.getElementById("U_Ph").value;
                               if(!Ph.match(/^\d{10}$/))  
                                   {
                            alert("Invalid Phone Number")
                            return false;
                            }
                              var Mail=document.getElementById("U_Adrr").value;
                               var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z]{2,4})+$/;

    if (!filter.test(Mail)) {
    alert("Invalid Mail ID");
    return false;
    }
    return true;
                 
                                                     }
                                                     </script>
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

