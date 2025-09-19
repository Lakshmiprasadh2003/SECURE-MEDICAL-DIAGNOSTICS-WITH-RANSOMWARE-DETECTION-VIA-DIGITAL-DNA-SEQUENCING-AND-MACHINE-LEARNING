<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.security.InvalidAlgorithmParameterException"%>
<%@page import="sun.misc.BASE64Encoder"%>
<%@page import="javax.crypto.Cipher"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
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
                                        
                                                   String U_Pass=rs.getString("U_Pass");
                                                    String U_Mail=rs.getString("U_Mail");
                                                     String U_Ph=rs.getString("U_Ph");
                                                      String U_Addr=rs.getString("U_Addr");
                                                      String qualification=rs.getString("qualification");
                                                      String profession=rs.getString("profession");
                                                  
                                    %>
				<div class="contact-info">
					<ul>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Id :<%=id%>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Aadhar_ID :<%=care%>
                                             
						
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
                         <li><a href="User_Home.jsp" class="smoothScroll">HOME</a></li>
                         <li><a href="User_Information.jsp" class="smoothScroll">USER INFORMATION</a></li>
                         <li><a href="Phr_Information.jsp" class="smoothScroll">PHR INFORMATION</a></li>
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
<script type="text/javascript" language="JavaScript">

function Validate1(theForm) {
    if (
    theForm.U_Name1.checked == false) 
    {
        alert ('You didn\'t choose any of the checkboxes!');
        return false;
    } else {    
        return true;
    }
}

</script> 
<form  name="Check1"  action="User_Encrypt" method="post" >
                                <%
                                     
                                   String query="Select * from secure_table where U_ID='"+id+"'";
                                                      ResultSet rsd=db.Select(query);
                                                      if(rsd.next())
                                                      {
                                                     care=rsd.getString("U_Name");
                                        
                                                  U_Pass=rsd.getString("U_Pass");
                                                    U_Mail=rsd.getString("U_Mail");
                                                    U_Ph=rsd.getString("U_Ph");
                                                   U_Addr=rsd.getString("U_Addr");
                                                   qualification=rsd.getString("qualification");
                                                   profession=rsd.getString("profession");
                                                   
                                                      }
                                                      %>
                             <center> <br><br><b><h4><font size="5px" color="#1E90FF" >USER INFORMATION</font></h4></b>        
                             
                            <br>
                           <br>
        <div class="form-wrapper"> 
                                <table border="3">
                                    <tr><td> User Id</td><td>:</td><td><input type="text" value="<%=id%>" id="U_id" name="U_id" style="width: 204px;" required readonly></td></tr>
                                    <tr><td> User Name</td><td>:</td><td><input type="text" value="<%=care%>" id="U_Name" name="U_Name" style="width: 204px;" required readonly></td></tr>
                            
                                    <tr><td>  PassWord</td><td>:</td><td><input type="password" value="<%=U_Pass%>" id="U_pass" name="U_Pass" style="width: 204px;" required readonly></td></tr>
                                    <tr><td>  To mail</td><td>:</td><td><input type="text" value="<%=U_Mail%>" id="U_Adrr" name="U_Adrr" style="width: 204px;" required readonly><input type="checkbox" name="U_Name1" id="U_Name1" value="3"></td></tr>
                                    <tr><td>To Contact</td><td>:</td><td><input type="text" value="<%=U_Ph%>" id="U_Ph" name="U_Ph" style="width: 204px;" required readonly><input type="checkbox" name="U_Name1" id="U_Name1"  value="4"></td></tr>
                                    <tr><td>Address</td><td>:</td><td><textarea style="height: 69px; width: 204px" id="desc" name="desc" required readonly><%=U_Addr%></textarea><input type="checkbox" name="U_Name1" id="U_Name1" value="5"></td></tr>
                                    <tr><td>Qualification</td><td>:</td><td><input type="text" value="<%=qualification%>" id="Quali" name="Quali" style="width: 204px;" required readonly><input type="checkbox" name="U_Name1" id="U_Name1"  value="6"></td></tr> 
                                    <tr><td>Profession</td><td>:</td><td><input type="text" value="<%=profession%>" id="Prof" name="Prof" style="width: 204px;" required readonly><input type="checkbox" name="U_Name1" id="U_Name1"  value="7"></td></tr> 
                                    
                                                        <tr><td><input type="Submit" value="Encrypt Data" onclick="return myFunction()">&nbsp;       
                                                                  
                                </table></center>
                            </form>
                                </div>
                                    </div>
                                    <script>
function myFunction() {
   
    if ( ( Check1.U_Name1[0].checked == false ) && ( Check1.U_Name1[1].checked == false )&& ( Check1.U_Name1[2].checked == false )&& ( Check1.U_Name1[3].checked == false ) ) 
{
alert ( "Please choose your choice" ); 
return false;
}
                      return true;
 
        
        

}
</script>
         						 <div class="clear"> </div>
                                                   <%
                                String msg=(String)session.getAttribute("msg");
                                if(msg!=null)
                                {
                                    %>
                                    <script>
                                        var ss='<%=msg%>';
                                        alert(ss);0
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

