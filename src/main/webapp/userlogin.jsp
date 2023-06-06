f<!DOCTYPE HTML>
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
						<a href="#">Intrusion Detection System...... </a>
					</h1>
				</marquee>
			</div>

			<!-- Nav -->
			<nav id="nav">

				<ul>
					<li><a class="active" href="index.jsp">IIDS</a></li>
					<li><a href="adminlogin.jsp">Admin</a></li>
					<li><a href="adminlogin.jsp">User</a></li>
					<li><a href="services.html">About us</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</nav>

		</div>
	</div>

	
	
		  <div class="col-md-6">
                    <div class="right-box-pro wow fadeIn">
						<img src="images/re.jpg" alt="" class="img-fluid img-rounded fat-ab" height = 380 width = 1700>
                    </div>
			
			
		
<div id="featured">
			<div class="container">
			<div align="center">
			<form action="login" method="post">

								<h2>User Login</h2>
								<br>
								<table cellspacing="10">


									<tr>
										<th>Username</th>
										<td><input type="text" name="username" class="input_text"
											required placeholder="Enter Username" /></td>
									</tr>
									<td>.</td>
									<tr>
										<th>password:</th>
										<td><input type="password" name="password"
											class="input_text" required placeholder="Enter Password" /></td>
									</tr>

									

								</table>
								<br />


						 <input type="submit" value="Submit" class="button"/>	
			</div>
			</div>
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