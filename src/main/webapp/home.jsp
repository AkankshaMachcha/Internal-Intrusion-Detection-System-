
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
<%
		if (request.getParameter("err") != null) {
				out.println("<script>alert('OTP Does Not Match')</script>");
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
				<li><a class="active" href="home.jsp">IIDS</a></li>
				 <li><a href="Logout">Logout</a></li>
			</ul>
			</nav>

		</div>
	</div>

	<img src="images/welcome.gif" alt="" class="img-fluid img-rounded fat-ab"
			height=400 width=1500>
<div id="featured">
			<div class="container">
			<div align="center">
						<h1>IIDPS Started Successfully</h1>
			</div>
			</div>
		</div>
	<!-- Copyright -->
	<div id="copyright">
		<div class="container">
		<a href="">CodExecute</a> 
		</div>
	</div>

</body>
</html>
<%
	} else {
		response.sendRedirect("index.jsp");
	}
%>