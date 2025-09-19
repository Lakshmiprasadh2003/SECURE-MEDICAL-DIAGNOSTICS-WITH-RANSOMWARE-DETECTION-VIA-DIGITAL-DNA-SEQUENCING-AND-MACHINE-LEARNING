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
     

<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet" href="css/datepicker.css" type="text/css" />
    <link rel="stylesheet" media="screen" type="text/css" href="css/layout.css" />
    <script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/datepicker.js"></script>
    <script type="text/javascript" src="js/eye.js"></script>
    <script type="text/javascript" src="js/utils.js"></script>
    <script type="text/javascript" src="js/layout.js?ver=1.0.2"></script>
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
        function displayDate() 
        {

var newdate=document.getElementById("inputDate").value;
        var d1 = new Date(newdate); //from date yyyy-MM-dd
            var d2 = new Date(); //to date yyyy-MM-dd (taken currentdate)
             var ds=d2;
            var Months = d2.getMonth() - d1.getMonth();
            var Years = d2.getFullYear() - d1.getFullYear();
            var Days = d2.getDate() - d1.getDate();
            Months = (d2.getMonth() + 12 * d2.getFullYear()) - 
            		(d1.getMonth() + 12 * d1.getFullYear());
            var MonthOverflow = 0;
            if (Months - (Years * 12) < 0)
                MonthOverFlow = -1;
            else
                MonthOverFlow = 1;
            if (MonthOverFlow < 0)
                Years = Years - 1; Months = Months - (Years * 12);
            var LastDayOfMonth = new Date(d2.getFullYear(), 
            		d2.getMonth() + 1, 0, 23, 59, 59);
            LastDayOfMonth = LastDayOfMonth.getDate();
            if (MonthOverFlow < 0 && (d1.getDate() > d2.getDate())) {
                Days = LastDayOfMonth + (d2.getDate() - d1.getDate()) - 1;
            }
            else
                Days = d2.getDate() - d1.getDate();
            if (Days < 0)
                Months = Months - 1;
            var l = new Date(d2.getFullYear(), d2.getMonth(), 0);
            var l1 = new Date(d1.getFullYear(), d1.getMonth() + 1, 0);
            if (Days < 0) 
            {
                if (l1 > l)
                    Days = l1.getDate() + Days;
                else
                    Days = l.getDate() + Days;
            }
            document.getElementById("Age").value = Years + 
            "Year(s), " + Months + " Month(s), " + Days + "Day(s)";
       document.getElementById("C_Date").value =ds;
        }
    </script>
    <script>
        function ValidateDate()
        {
                var newdate=document.getElementById("inputDate").value;
        var d1 = new Date(newdate); //from date yyyy-MM-dd
            var d2 = new Date();
             var ds=d2;//to date yyyy-MM-dd (taken currentdate)
            var Months = d2.getMonth() - d1.getMonth();
            var Years = d2.getFullYear() - d1.getFullYear();
            var Days = d2.getDate() - d1.getDate();
            Months = (d2.getMonth() + 12 * d2.getFullYear()) - 
            		(d1.getMonth() + 12 * d1.getFullYear());
            var MonthOverflow = 0;
            if (Months - (Years * 12) < 0)
                MonthOverFlow = -1;
            else
                MonthOverFlow = 1;
            if (MonthOverFlow < 0)
                Years = Years - 1; Months = Months - (Years * 12);
            var LastDayOfMonth = new Date(d2.getFullYear(), 
            		d2.getMonth() + 1, 0, 23, 59, 59);
            LastDayOfMonth = LastDayOfMonth.getDate();
            if (MonthOverFlow < 0 && (d1.getDate() > d2.getDate())) {
                Days = LastDayOfMonth + (d2.getDate() - d1.getDate()) - 1;
            }
            else
                Days = d2.getDate() - d1.getDate();
            if (Days < 0)
                Months = Months - 1;
            var l = new Date(d2.getFullYear(), d2.getMonth(), 0);
            var l1 = new Date(d1.getFullYear(), d1.getMonth() + 1, 0);
            if (Days < 0) 
            {
                if (l1 > l)
                    Days = l1.getDate() + Days;
                else
                    Days = l.getDate() + Days;
            }
            document.getElementById("Age").value = Years + 
            "Year(s), " + Months + " Month(s), " + Days + "Day(s)";
             document.getElementById("C_Date").value =ds;
          var Prof=document.getElementById("Prof").value;
             if (!Prof.match(/^[a-zA-Z ]+$/)) 
    {
        alert('Profession Should be alphabets ');
        return false;
    }
       var Surgery=document.getElementById("Surgery").value;
             if (!Surgery.match(/^[a-zA-Z ]+$/)) 
    {
        alert(' Surgery  Should be alphabets ');
        return false;
    }
        var Issues=document.getElementById("Issues").value;
             if (!Issues.match(/^[a-zA-Z ]+$/)) 
    {
        alert(' Issues  Should be alphabets ');
        return false;
    } 
    var Issues=document.getElementById("Issues").value;
             if (!Issues.match(/^[a-zA-Z ]+$/)) 
    {
        alert(' Issues  Should be alphabets ');
        return false;
    }
      var Weight=document.getElementById("Weight").value;
              if(!Weight.match(/^\d{1,3}$/))  
    {
        alert(' Weight  Should be 1 to 3 Digits ');
        return false;
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
					
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Id :<%=id%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Aadhar ID :<%=care%>
                                                    
                                               
						
					
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
                         <li><a href="User_Phr.jsp" class="smoothScroll">ADD PHR</a></li>
                         <li><a href="Modify_Phr.jsp" class="smoothScroll">MODIFY PHR DETAILS</a></li>
                         <li><a href="User_Modify.jsp" class="smoothScroll">VIEW DETAILS</a></li>
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
                            <center>
                                <%
                                        ResultSet rf=db.Select("select * from user_phr_details where User_Name='"+care+"' and User_Id='"+id+"'");
                                        if(rf.next())
                                        {
                                            
                                        %>
                                <form action="Update_Phr" method="post" onsubmit="return ValidateDate(true);">
                                    <br><br>
                                    
                                    
                                     <center><br><br><b><h4><font size="5px" color="#1E90FF" > ADD PERSONAL HEALTH RECORD INFORMATION</font></h4></b><br>
                                   
                                   	
         <br>
                                               
		  
        <br>
        <br>
        <div class="form-wrapper">  
                                    <table border="3">
                                        <tr>
                                            <td>User Name</td><td>:</td><td><input type="text" value="<%=name%>" name="U_Name"  style="width: 204px;"  readonly></td>
                                        </tr>
                                        <tr>
                                            <td>User Id</td><td>:</td><td><input type="text" value="<%=id%>" name="U_Id" style="width: 204px;" readonly></td>
                                        </tr>                                          
                                            
                                        <tr>
                                                <td>Mobile No</td><td>:</td><td><input type="text" value="<%=rf.getString("U_Ph")%>" name="U_Ph" style="width: 204px;" readonly></td>
                                        </tr> 
                                        
                                         <tr>
                                             <td>Date Of Birth</td><td>:</td><td> <p>
                                                     <input class="inputDate" id="inputDate" name="inputDate" value="<%=rf.getString("DOB")%>"  style="width: 196px;" readonly />
					
				</p>
			<pre>
<script>
$('#inputDate').DatePicker({
	format:'yyyy-MM-dd',
	date: $('#inputDate').val(),
	current: $('#inputDate').val(),
	starts: 1,
	position: 'r',
        maxDate: "+1D",
	onBeforeShow: function(){
		$('#inputDate').DatePickerSetDate($('#inputDate').val(), true);
	},
	onChange: function(formated, dates){
		$('#inputDate').val(formated);
		if ($('#closeOnSelect input').attr('checked')) {
			$('#inputDate').DatePickerHide();
		}
	}
});
        </script>
                        </pre>
                                
                                        </tr>
                                      
                                          <tr>
                                                <td>Age </td><td>:</td><td><input type="text" value="<%=rf.getString("age")%>" name="Age" id="Age" style="width: 204px;vertical-align: top" required readonly></td>
                                        </tr> 
                                         <tr>
                                                <td>Blood Group </td><td>:</td><td><select name="BG" id="BG" style="width: 204px;" >
                                                        <option><%=rf.getString("BloodGroup")%></option>
                                                        <option>A+</option>
                                                         <option>A-</option>
                                                         <option>B+</option>
                                                         <option>B-</option>
                                                          <option>AB+</option>
                                                           <option>AB-</option>
                                                            <option>O+</option>
                                                             <option>O-</option>
                                                        </select></td>
                                        </tr> 
                                          <tr>
                                                <td>Any Surgery </td><td>:</td><td><input type="text" value="<%=rf.getString("Opeartion")%>" name="Surgery" id="Surgery" style="width: 204px;" required></td>
                                        </tr> 
                                         <tr>
                                                <td>Major Issues </td><td>:</td><td><input type="text" value="<%=rf.getString("Issuses")%>" name="Issues" id="Issues" style="width: 204px;" required></td>
                                        </tr>
                                               <tr>
                                                <td>BP Level </td><td>:</td><td><select  name="BB" id="BB" style="width: 204px;">
                                                       <option><%=rf.getString("Bp")%></option>
                                                        <option>0-120</option>
                                                      <option>120-139</option>
                                                      <option>140-159</option>
                                                      <option>160-More</option></select></td>
                                        </tr>
                                             <tr>
                                                <td>Height </td><td>:</td><td><select name="Height" id="Height" style="width: 204px;" >
                                                        <option><%=rf.getString("height")%></option>                             
                                                        <option>0-152.40cm</option>
                                                      <option>152.41-167.74cm</option>
                                                      <option>167.75-190.50cm</option>
                                                          <option>190.51-205.74cm</option>
                                                            <option>205.75-218.44cm</option>
                                             </select></td>
                                        </tr>
                                         <tr>
                                                <td>Weight </td><td>:</td><td><input type="text" value="<%=rf.getString("weight")%>" name="Weight" id="Weight" style="width: 204px;" required></td>
                                        </tr>
                                          <tr>
                                                <td>Current Date </td><td>:</td><td><input type="text" value="<%=rf.getString("C_date")%>" name="C_Date" id="C_Date" style="width: 204px;" required readonly></td>
                                        </tr>
                                    </table><br><br>
                                        <input type="submit" value="UPDATE DETAILS">
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
  
		</div>
		<div class="clear"> </div>
		
			<div class="clear"> </div>
			
                    <%}
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

