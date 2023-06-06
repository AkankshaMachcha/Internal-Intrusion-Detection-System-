<!DOCTYPE HTML>
<!--
	Autonomy by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
<title>IIDS</title>
<meta http-equiv="content-type" content="text/html; charset=utf-5" />
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
		if (request.getParameter("userExist") != null) {
			out.println(
					"<script>alert('User Already Exist. Please enter unique email, mobile number and username. ')</script>");
		}
	%>
	<!-- Header -->
	<div id="header">
		<div class="container">

			<!-- Logo -->
			<div id="logo">
				<marquee>
					<h1>
						<a href="#">Intrusion Detection System......... </a>
					</h1>
				</marquee>
			</div>

			<!-- Nav -->
			<nav id="nav">

				<ul>
					<li><a class="active" href="index.jsp">Home</a></li>
					<li><a href="adminlogin.jsp">Admin</a></li>
					<li><a href="userlogin.jsp">User</a></li> 
					<li><a href="services.html">About us</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</nav>

		</div>
	</div>



	<div class="col-md-6">
		<!-- <div class="right-box-pro wow fadeIn">
						<img src="images/1.jpg" alt="" class="img-fluid img-rounded fat-ab" height = 1000 width = 2230>
                    </div>
			<div class="right-box-pro wow fadeIn">
						<img src="images/2.jpg" alt="" class="img-fluid img-rounded fat-ab" height = 1000 width = 2230>
                    </div>
                    <div class="right-box-pro wow fadeIn">
						<img src="images/3.jpg" alt="" class="img-fluid img-rounded fat-ab" height = 1000 width = 2230>
                    </div>
                    <div class="right-box-pro wow fadeIn"> -->
	<!-- 	<img src="images/4.jpg" alt="" class="img-fluid img-rounded fat-ab"
			height=1050 width=2230>
	</div> -->
	
<img src="images/gg.gif" alt="" class="img-fluid img-rounded fat-ab"
			height=630 width=1500>
	</div>



	
		<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				 <a href="www.codexecute.com">IIDS</a>
			</div>
		</div>
	<!-- end copyrights -->
</body>
</html>