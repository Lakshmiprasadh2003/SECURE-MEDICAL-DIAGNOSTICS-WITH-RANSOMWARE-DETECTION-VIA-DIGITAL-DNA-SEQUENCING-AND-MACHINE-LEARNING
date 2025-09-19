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
                  <script>
                      function Validate_Data()
                      {
                        var H_Name=document.getElementById("H_Name").value;
                                             
                        //if(!H_Name.match(/^[a-zA-Z]+$/)
                           // {
                                //alert("Invalid Health care Name Don't Use Space")
                                //return false;
                            //}
                       var P_Name=document.getElementById("P_Name").value;
                       //if(!P_Name.match(/^[a-zA-Z]+$/))
                           // {
                           // alert("Invalid Provider Name Don't Use Space")
                            //return false;
                            //}
                               var UP_Name=document.getElementById("UP_Name").value;
                              // if(!UP_Name.match(/^[a-zA-Z]+$/))
                            //{
                           // alert("Invalid User Name Don't Use Space")
                            //return false;
                           // }
               
                             var Ph=document.getElementById("Ph").value;
                               if(!Ph.match(/^\d{10}$/))  
                                   {
                            alert("Invalid Phone Number")
                            return false;
                            }
                              var Mail=document.getElementById("Mail").value;
                               var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z]{2,4})+$/;

    if (!filter.test(Mail)) {
    alert("Invalid Mail ID");
    return false;
    }
                               var year=document.getElementById("year").value;
                                if(!year.match(/^\d{4}$/))  
                                   {
                            alert("Invalid Year")
                            return false;
                            }
                            return true;
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
                         <li><a href="Provider_Reg.jsp" class="smoothScroll">PROVIDER REGISTRATION</a></li>
                         <li><a href="Provider.jsp" class="smoothScroll">PROVIDER LOGIN</a></li>
                    </ul>
               </div>

          </div>
     </section>   
			
     <br>
		
		    <div class="clear"> </div>
		    <div class="wrap">
		    	<div class="content">
                            
                            <div class="container1">
     
        <h3>PROVIDER REGISTRATION</h3>
        
        <div class="form-wrapper">
      <form action="ProviderReg" enctype="multipart/form-data" method="post" onsubmit="return Validate_Data(true)">
               
               
                <div class="form-item">
                    <label for="fullname">HEALTH CARE NAME:</label>
             <input type="text" value="" id="H_Name" name="H_Name" style="width: 204px;" required>
                </div>
                <div class="form-item">
                    <label for="username">PROVIDER NAME:</label>
           <input type="text" value="" id="P_Name" name="P_Name" style="width: 204px;" required>
                </div>
                <div class="form-item">
                    <label for="username">USER NAME:</label>
                 <input type="text" value="" id="UP_Name" name="UP_Name" style="width: 204px;" required>
                </div>

                
                </div>
             <div class="form-item">
                    <label for="email">PASSWORD:</label>
            <input type="password" value="" id="P_pass" name="P_Pass" style="width: 204px;"required>
                </div>
                <div class="form-item">
                    <label for="email">ADDRESS:</label>
                      &nbsp;&nbsp;&nbsp;&nbsp;<textarea value="" id="P_Adrr" name="P_Adrr" style="width: 204px; height: 76px;"required></textarea>
                </div>
               
         <div class="form-item">
                    <label for="gender">CONTACT NUMBER:</label>
                    
                    <input type="text" value="" id="Ph" name="Ph" style="width: 204px;" required>
                </div>   
                  
                   
        
        <div class="form-item">
                    <label for="email">MAIL_ID:</label>
                 <input type="text" value="" id="Mail" name="Mail" style="width: 204px;" required>
                </div>
          <div class="form-item">
                    <label for="email">YEAR OF STARTING:</label>
                <input type="text" value="" id="year" name="year" style="width: 204px;" required >
                </div>
          <div class="form-item">
                    <label for="email">PROFILE IMAGE:</label>
                <input type="file" value="" id="Image" name="Image" style="width: 204px;" required>
                </div>
        <br>
           <input type="submit" value="Register" >      
                                                                   
     
                <br>
              
                  
              
        </form>
        </div>
                            <br>     
                            
                            <!--<form action="ProviderReg" enctype="multipart/form-data" method="post" onsubmit="return Validate_Data(true)">
                                  <center><br><b><h4><font size="6px" color="#1E90FF" >PROVIDER REGISTRATION</font></h4></b>

                            <br>
                      
                                <table border="3">
                                    <tr><td> Health Care Name</td><td>:</td><td><input type="text" value="" id="H_Name" name="H_Name" style="width: 204px;" required></td></tr>
                                    <tr><td> Provider Name</td><td>:</td><td><input type="text" value="" id="P_Name" name="P_Name" style="width: 204px;" required></td></tr>
                                    <tr><td> User Name</td><td>:</td><td><input type="text" value="" id="UP_Name" name="UP_Name" style="width: 204px;" required></td></tr>
                                    <tr><td>  PassWord</td><td>:</td><td><input type="password" value="" id="P_pass" name="P_Pass" style="width: 204px;"required></td></tr>
                                     <tr><td>  Address</td><td>:</td><td><textarea value="" id="P_Adrr" name="P_Adrr" style="width: 204px; height: 76px;"required></textarea></td></tr>
                                        
                                          <tr><td>  Contact Number </td><td>:</td><td><input type="text" value="" id="Ph" name="Ph" style="width: 204px;" required></td></tr>
                                          <tr><td>  Mail_Id </td><td>:</td><td><input type="text" value="" id="Mail" name="Mail" style="width: 204px;" required></td></tr>
                                             <tr><td>  Year Of Starting </td><td>:</td><td><input type="text" value="" id="year" name="year" style="width: 204px;" required ></td></tr>
                                             <tr><td>  Profile Image </td><td>:</td><td><input type="file" value="" id="Image" name="Image" style="width: 204px;" required></td></tr>
                                     
                                </table>
                                 
                            <br><br>
                                         <input type="submit" value="Register" >   </center>
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
						 <div class="clear"> </div>
  
		</div>
		<div class="clear"> </div>
		
			<div class="clear"> </div>
			<div class="footer">
				
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

