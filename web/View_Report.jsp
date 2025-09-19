<%@page import="java.util.Date"%>
<%@page import="Connection.DbConnection1"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@page import="Connection.Encryption"%>
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
                                    DbConnection db1=new DbConnection();
                                    System.out.println(id+","+name);
                                    ResultSet rs1=db1.Select("select * from provider_doctors where S_No='"+id+"' and D_Name='"+name+"'");
                                    if(rs1.next())
                                    {
                                        String care=rs1.getString("D_Name");
                                    
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
                         <li><a href="Add_Report.jsp" class="smoothScroll">ADD REPORT</a></li>
                         <li><a href="View_Report.jsp" class="smoothScroll">VIEW REPORT</a></li>
                         <li><a href="logout.jsp" class="smoothScroll">LOGOUT  </a></li>
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
						 <div class="clear"> </div>
                                                   <center>
                                            <br>
                                              
                                          
                                              <%
                                 DbConnection1 db=new DbConnection1();
                  String dd=request.getParameter("rprt");
                  %>
                  <h3>DOCTOR COUNSEL FORM</h3>
        <br>
        <br>
        <div class="form-wrapper">    
                  
                  
                  <form action="View_Report.jsp"><table cellspacing="10">
              <tr><td>Reports</td> <td>:</td><td><select name="rprt">
                         
                          
                          <option>All</option>
                                                     <option>Scan</option>
                                                      <option>X-Ray</option>
                                                      <option>ECG</option>
                                                       <option>TS</option>
                                                        <option>Others</option>
                                                       
                                                      
                      </select></td><td><input type="submit" value="View"></td></tr>
          </table>
          </form>
          
                  <br>
                  <br>
                        <%
                            //String dd=request.getParameter("rprt");
                         try
                         {
                             
                            
                             ResultSet rs=null;
                            if(dd.equals("All"))
                            {
                                 rs=db.Select("SELECT * FROM user_report where H_Care='"+name+"' ");
                            
                            }
                        else
                            {
                              rs=db.Select("SELECT * FROM user_report where  Type='"+dd+"' and H_Care='"+name+"'");
                               
                            }
                      
                            %>
  
                  
                                <table border="1">
                                    <tr>
                                        <th style="width: 204px;">
                                           Date
                                        </th>
                                        <th style="width: 204px;">
                                        Hospital Name
                                        </th>
                                        <th style="width: 204px;">
                                     Aadhar  No
                                        </th>
                                         <th style="width: 204px;">
                                           Consultant Doctor
                                        </th>
                                        <th style="width: 204px;">
                                           Description
                                        </th >
                                        <th style="width: 204px;">File Time</th>
                                        <th style="width: 204px;">
                                           Image
                                        </th>
                                         
                                    </tr>
                                    <%
                            String Aadhar_Id=null;
                            int i1=1;
                            while(rs.next())
                            {
                                try{
 Date dd1 = new Date();
Aadhar_Id=rs.getString("Aadhar_No");
                                                SimpleDateFormat std = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
    		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        	Date date1 = sdf.parse(std.format(dd1));
                String dt2=rs.getString("Date")+" "+rs.getString("ftime");
                        
        	Date date2 = sdf.parse(dt2);

        	System.out.println(sdf.format(date1));
        	System.out.println(sdf.format(date2));
                System.out.println(sdf.format(date1).compareTo(sdf.format(date2))<0);
                
                System.out.println(sdf.format(date1).compareTo(sdf.format(date2))>0);
                   System.out.println(sdf.format(date1).compareTo(sdf.format(date2))==0);
                      System.out.println(sdf.format(date1).compareTo(sdf.format(date2))<=0);
                       System.out.println(sdf.format(date1).compareTo(sdf.format(date2))>=0);
                       

        	if(sdf.format(date1).compareTo(sdf.format(date2))>0){
        		
                         Encryption ed=new Encryption();
        	 %>
                              <tr>
                                  <td><%=rs.getString("Date")%></td>
                                  
                                      <td><%=ed.Encryption1(rs.getString("H_Care"))%></td>
                                       <td><%=rs.getString("Aadhar_No")%></td>
                                      <td>****</td>
                                        <td><%=ed.Encryption1(rs.getString("Desc"))%></td>
                                        <td><%=dt2%></td>
                                        
                                        <%
                    if(rs.getString("status").equals("pending"))
                    {
                    %>
                                        <td><a href="filereq.jsp?id=<%=rs.getInt("S_No")%>&name=<%=rs.getString("Aadhar_No")%>">You Want Extra time</a> </td>
                                        <%
                    }else
                    {
                          %>
                                        <td><a href="#">Request Already Send</a> </td>
                                        <%
                    }
                    %>
                             
                              <%
        	}else if(sdf.format(date1).compareTo(sdf.format(date2))<0){
        		System.out.println("Date1 is before Date2");
                            Encryption ed=new Encryption();
                            %>
        	 <tr>
                                  <td><%=rs.getString("Date")%></td>
                                   
                                     
                                       <td><%=rs.getString("H_Care")%></td>
                                        <td><%=rs.getString("Aadhar_No")%></td>
                                      <td><%=rs.getString("C_Doc")%></td>
                                        <td><%=rs.getString("Desc")%></td>
                                           <td><%=dt2%></td>
                                        <td>  <a href="newjsp.jsp?name=<%=rs.getString("S_No")%>" target="_top"><img src="newjsp.jsp?name=<%=rs.getString("S_No")%>" style="width: 200px;height: 150px"></a></td>
                             
                       
                              <%
        	}
                
                
                else if(date1.compareTo(date2)==0){
        		  %>
                              <tr>
                                  <td><%=rs.getString("Date")%></td>
                                   
                                     
                                       <td><%=rs.getString("H_Care")%></td>
                                        <td><%=rs.getString("Aadhar_No")%></td>
                                      <td><%=rs.getString("C_Doc")%></td>
                                        <td><%=rs.getString("Desc")%></td>
                                           <td><%=dt2%></td>
                                        <td>  <a href="newjsp.jsp?name=<%=rs.getString("S_No")%>" target="_top"><img src="newjsp.jsp?name=<%=rs.getString("S_No")%>" style="width: 200px;height: 150px"></a></td>
                            
                              <%
                                
                            }
                else{
        		System.out.println("How to get here?");
        	}

                          %>
                              </tr>
                          <%
                                
                                	}catch(Exception ex){
    		ex.printStackTrace();
    	} 
                            }
                         }catch(Exception e)
                         {
                              System.out.println("Error"+e); 
                         }
                                
                            %>
  </table>  
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

