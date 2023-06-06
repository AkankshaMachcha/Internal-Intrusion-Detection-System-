
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
		<%
		if (request.getParameter("ok") != null) {
				out.println("<script>alert('privileges Assign Successfull ')</script>");
			}
	%>

	<%
		if (request.getParameter("no") != null) {
				out.println("<script>alert('privileges Not Assign Successfull ')</script>");
			}

			if (request.getParameter("removeUserSucc") != null) {
				out.println("<script>alert('User removed successfully. ')</script>");
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
						<li><a href="adminhome.jsp">Home</a></li>
				<li><a class="active" href="viewUsers.jsp">Users</a></li>
				<li><a href="Logout">Logout</a></li>
				</ul>
			</nav>

		</div>
	</div>

	
	<img src="images/8.jpg" alt="" class="img-fluid img-rounded fat-ab"
			height=500 width=1500>
	</div>
<div id="featured">
			<div class="container">
			<div align="center">
<form action="UpdateUser" method="post">

							<%
								Connection con = DbConnection.getConnection();
									PreparedStatement ps = con.prepareStatement(
											"select * from usermem_info where username= '" + request.getParameter("username") + "'");
									ResultSet rs = ps.executeQuery();
									if (rs.next()) {
							%>
							<table cellspacing="15">
								<tr>
									<td>First Name</td>
									<td><input type="text" value="<%=rs.getString("name")%>"
										name="name" disabled="disabled"></td>
								</tr>
								<td>.</td>
								<tr>
									<td>Last Name</td>
									<td><input type="text"
										value="<%=rs.getString("lastname")%>" name="name"
										disabled="disabled"></td>
								</tr>
								<td>.</td>
								<tr>
									<td>DoB</td>
									<td><input type="text" value="<%=rs.getString("dob")%>"
										name="name" disabled="disabled"></td>
								</tr>
								<td>.</td>
								<tr>
									<td>Email</td>
									<td><input type="text" value="<%=rs.getString("email")%>"
										name="email"></td>
								</tr>
								<td>.</td>
								<tr>
									<td>Mobile Number</td>
									<td><input type="text" value="<%=rs.getString("mobno")%>"
										name="mobno" pattern="[789][0-9]{9}" maxlength="10"
										title=" Only Number allowed Start with 7 or 8 or 9"
										placeholder="Mobile Number"></td>
									<td><input type="hidden" value="<%=rs.getString("id")%>"
										name="userId"></td>

								</tr>
								<td>.</td>
								<tr>
									<td>Username</td>
									<td><input type="text"
										value="<%=rs.getString("username")%>" name="username"
										></td>
								</tr>
								<td>.</td>
								<tr>
									<td>Password</td>
									<td><input type="text"
										value="<%=rs.getString("password")%>" name="password"
										></td>
								</tr>
								<td>.</td>
								<tr>
									<td></td>
									<td><input type="submit" value="Update" width="10px"></td>
								</tr>


								<%
									}
								%>
							</table>
							<br />

						</form>
			</div>
			</div>
		</div>
	<!-- Copyright -->
	<div id="copyright">
		<div class="container">
		<a href="www.codexecute.com">IIDS</a>  
				
		</div>
	</div>

	
</body>
</html>
<%
	} else {
		response.sendRedirect("index.jsp");
	}
%>