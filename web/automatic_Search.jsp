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
                         <script src="https://api.tomtom.com/maps-sdk-for-web/cdn/5.x/5.64.0/services/services-web.min.js"></script>
		
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
                    <script type="text/javascript">
    	var map = null;
        var latLong =null;
			function showlocation() {
			   // One-shot position request.
			    navigator.geolocation.getCurrentPosition(callback);
			}
    	
      function callback(position) {
      	
      	var lat = position.coords.latitude;
      	var lon = position.coords.longitude;
      	            document.getElementById("latitude").value=lat;
                     document.getElementById("longitude").value=lon;

           	latLong	= new google.maps.LatLng(lat, lon);
       
      	   var latlng = new google.maps.LatLng(lat, lon);
           var  geocoder = new google.maps.Geocoder();
            geocoder.geocode
            ({ 'latLng': latlng }, 
            function (results, status)
            {
                var add=document.getElementById("currentlocation").value=results[0].formatted_address;
                alert(add); 
            });
            var addr=document.getElementById("currentlocation").value;
            if(addr === '' || addr === null || addr === undefined){
              tt.services.reverseGeocode({key:"1MmbJI1SBWF7Yht63JQXbpE5Yp5BvAge",   position: latLong})

                                        .go()
                                        .then(function (results) {
                                       // alert("success");
                                        var add=document.getElementById("currentlocation").value=results.addresses[0].address.freeformAddress;
                                    //alert(add); 
                                        //alert(results.addresses[0].address.freeformAddress);
                                    });
            initMap();
        }  }
      function initMap() {
        var mapOptions = {
          center: latLong,
          zoom: 8,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map(document.getElementById("map-canvas"), 
                                          mapOptions);
     var marker = new google.maps.Marker({
				    position: latLong
				});      
				
				marker.setMap(map);
                                     	map.setZoom(8);
      	map.setCenter(marker.getPosition());
      } 
  
      //   google.maps.event.addDomListener(window, 'load', initMap);
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
                         <li><a href="User_Home.jsp" class="smoothScroll">HOME</a></li>
                         <li><a href="Services_Booking1.jsp" class="smoothScroll">SEARCH HOSPITAL</a></li>
                         <li><a href="automatic_Search.jsp" class="smoothScroll">AUTOMATIC SEARCH HOSPITAL</a></li>
                         <li><a href="logout.jsp" class="smoothScroll">LOGOUT</a></li>
                    </ul>
               </div>

          </div>
     </section>

     <br>
			<div class="header">
				<div class="wrap">
				
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
                              <div class="container1"> 
                                            <br>
                         
<br><br><br><center><form action="automatic_Search.jsp" method="post">
            <h3> <font face="Algerian" size="5px" color="#OC6E6C">Location Based Hospital</font> </h3>   <br>   <br>
            
              <div class="container1"> 
                                            <br>
            <div><font face="Algerian" size="5px" color="purple">Current  Location : <input type="text" value="" id="currentlocation" name="loc1" style="width: 845px; height: 45px; text-align: center; font-family: georgia; font-size: 20px; color: blue" readonly></font></div>
               <br><font face="Algerian" size="5px" color="purple"> Current  latitude : <input type="text" value="" id="latitude" name="lat" style="width: 360px; height: 45px; text-align: center; font-family: georgia; font-size: 20px; color: blue" readonly></font><br>
                <br><font face="Algerian" size="5px" color="purple">Current  longitude : <input type="text" value="" id="longitude" name="lan" style="width: 360px; height: 45px; text-align: center; font-family: georgia; color: blue; font-size: 20px;" readonly></font><br>
           <br>
           <input type="Submit" value="CHECK HOSPITAL BASED SEARCH " style="width: 35%; height: 55px; background-color: green ; font-family: georgia; font-size: 20px "> 
                     
<center>	<script  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBOU-GKNx-YL5o-b8cvlqgyn0rso6iQtUk&callback=showlocation"
  type="text/javascript"></script></center> </form>
                            </center>

                              <br><br>  <table border="3" cellspacing="3" cellpadding="4" bordercolor="#0C6E69">
                                <tr> <td><font face="Algerian" color="black" size="3x">S:NO</font></td>
                                    <td><font face="Algerian" color="black" size="3px">HOSPITAL NAME</td>
                                      <td><font face="Algerian" color="black" size="3px"> ADDRESS </td>
                                      <td><font face="Algerian" color="black" size="3px"> CONTACT</td>
                                    <td><font face="Algerian" color="black" size="3px">MAIL ID</td>
                                    <td><font face="Algerian" color="black" size="3px">USERNAME</td>
                                      <td><font face="Algerian" color="black" size="3px">YEAR OF STARTING</td>
                                      <td><font face="Algerian" color="black" size="3px">IMAGE</td>
                                      <td><font face="Algerian" color="black" size="3px">BOOK SERVICE</td>

                                </tr>
<%
String location=request.getParameter("loc1");
System.out.println(location);
String latitude=request.getParameter("lat");
System.out.println(latitude);
String longitude=request.getParameter("lan");
System.out.println(longitude);
 try
                    {
                        
                    
                    DbConnection db = new DbConnection();
                    String [] ss1=location.split(",");
                    for(String s:ss1)
                    {
                                        System.out.println("select * from   provider_Details where address like ('%"+s.toLowerCase()+"%') ");
            ResultSet rs = db.Select("select * from   provider_Details where address like ('%"+s.toLowerCase().trim()+"%') ");    
           
            while (rs.next()) {
                 %>
                 <tr>
                     <td><font face="georgia" color="black" size="2px"><b><%=rs.getString("S_No")%></font></td>
                     <td><font face="georgia" color="black" size="2px"><b><%=rs.getString("Health_name")%></font></td>
                     <td><font face="georgia" color="black" size="2px"><b><%=rs.getString("address")%></font></td>
                     <td><font face="georgia" color="black" size="2px"><b><%=rs.getString("Contact")%></font></td>
                     <td><font face="georgia" color="black" size="2px"><b><%=rs.getString("Mail_ID")%></font></td>
                     <td><font face="georgia" color="black" size="2px"><b><%=rs.getString("Username")%></font></td>
                     <td><font face="georgia" color="black" size="2px"><b><%=rs.getString("Year_starting")%></font></td>
 <td><img src="servlet_1.jsp?name=<%=rs.getInt("S_No")%> " style="width: 150px; height: 90px;"></td> 
                                          <td><a href="Booking.jsp?B_id=<%=rs.getInt("S_No")%>"><font color="red" size="4px" face="georgia">Click Here</font></a></td>
                                         
                 </tr>
                     
                 <%
            }
                    }
                    %>     </table>
</div>
</div>
                   
                     
                 <%
            
                    }
                    
                 catch(Exception e)
                 {
                     System.out.println(e);
}%>
                

		</div>
		<div class="clear"> </div>
		
			<div class="clear"> </div>
			<div class="footer">
				<div class="left-content">
				</div>
				<div class="right-content">
				</div>
				<div class="clear"> </div>
			</div>
	
                  
                                      </div>   
	
<script  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBOU-GKNx-YL5o-b8cvlqgyn0rso6iQtUk&callback=showlocation"
  type="text/javascript"></script>
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

