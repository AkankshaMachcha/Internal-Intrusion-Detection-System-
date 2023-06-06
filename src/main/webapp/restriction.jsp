
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.datech"%>

<%@page import="com.Allcom"%>
<%
	if (session.getAttribute("username") != null) {
%>

<!DOCTYPE HTML>
<!--
	Autonomy by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
<title>IIDS</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>
<noscript>
	<link rel="stylesheet" href="css/skel-noscript.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/style-desktop.css" />
</noscript>
<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
</head>
<body class="homepage">

<style>
body {
  background-image: url('images//1.jpg');
}
</style>
	<%
 if(request.getParameter("ok")!=null)
 {
	 out.println("<script>alert('privileges Assign Successfull ')</script>");
 }
 
 %>
 
 <%
 if(request.getParameter("no")!=null)
 {
	 out.println("<script>alert('privileges Not Assign Successfull ')</script>");
 }
 
 %>
	<!-- Header -->
	<div id="header">
		<div class="container">

			<!-- Logo -->
			<div id="logo">
				<marquee>
					<h1>
						<a href="#">Intrusion Detection System...... </a>
					</h1>
				</marquee>
			</div>

			<!-- Nav -->
			<nav id="nav">

				<ul>
			 <li><a class="active" href="adminhome.jsp">Home</a></li>
       <li><a href="Logout">Logout</a></li> 
				</ul>
			</nav>

		</div>
	</div>

<style>
body {
  background-image: url("images/uiii.jpg");
}
</style>
			<div class="container">
			<div align="center">

   <div class="title">
     
       <font color="white"><h1 style="font-size:5vw"> Welcome Administrator</h1>
<br><br>
        
        <div class="contact-form">
        <% String user=request.getParameter("username");
        	session.setAttribute("user", user);
        %>
   <form action="restriction" method="post">	
       
     
			<table cellspacing="15">
			<tr><td><h1 style="font-size:2vw">USB</h1></td><td><h1 style="font-size:2vw"> Date</h1>
			</td><td><h1 style="font-size:2vw">Directory</h1></td></tr>
			
		  <tr>
		  <td style="width: 4cm;"><select name="usb" required >
		  <option value=""><h1>---Select---</h1></option>
		  <option value="yes">Yes</option>
		  <option value="no">No</option>
		  </select></td>
		  
		  <td style="width: 4cm;"><select name="date" required >
		  <option value="">---Select---</option>
		  <option value="yes">Yes</option>
		  <option value="no">No</option>
		  </select></td>
		  
		  <td style="width: 4cm;"><select name="directory" required >
		  <option value="">---Select---</option>
		  <option value="yes">Yes</option>
		  <option value="no">No</option>
		  </select></td>
		  
		 
		   </tr>
		 
			
		    </table><br/>
		    <br><br>
<input type="submit" value="Submit"> 
   
  </form> 
<br> <br>
                            
      </div>
      
     
    </div>			</div>
		</div>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<!-- Copyright -->
	<div id="copyright">
	</div>

</body>
</html>
<%
	} else {
		response.sendRedirect("index.jsp");
	}
%>