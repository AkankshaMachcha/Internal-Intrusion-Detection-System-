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
			if (request.getParameter("updated") != null) {
				out.println("<script>alert('User updated successfully. ')</script>");
			}
			if (request.getParameter("removeUserSucc") != null) {
				out.println("<script>alert('Failed to update user. ')</script>");
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
				      <li><a href="register.jsp">Add User</a></li>
				<li><a class="active" href="viewUsers.jsp">Users</a></li>
				<li><a href="activities.jsp">Activities</a></li>
				<li><a href="Logout">Logout</a></li>
				</ul>
			</nav>

		</div>
	</div>

<div id="featured">
			<div class="container">
			<div align="center">

	<div class="title">

						<h1><b><strong>User Activities</strong></b></h1>

<style>
table.mytable{
   border: 1px solid #000000;
}
tr.mytable{
   border: 1px solid #000000;
}
td.mytable{
   border: 1px solid #000000;
}

</style>
<br><br>
						<div class="contact-form">


								<table cellspacing="15" border="1" style="color: black;" cellpadding="3" class="mytable" >
									<tr align="center" class="mytable">
										<td style="width: 1cm;" class="mytable">Sr. No</td>
										<td style="width: 3cm;" class="mytable">User Name</td>
										<td style="width: 4cm;" class="mytable">IP Address</td>
										<td style="width: 5cm;" class="mytable">Date & Time</td>
										<td style="width: 4cm;" class="mytable">Captured User Image</td>
										<td style="width: 4cm;" class="mytable">Screenshot</td>
									</tr>

									<%
									int sr =1;
										Connection con = DbConnection.getConnection();
											PreparedStatement ps = con.prepareStatement("select * from user_activities");
											ResultSet rs = ps.executeQuery();
											while (rs.next()) {
									%>

									<tr style="color: blue" align="center"  class="mytable">
										<td  style="width: 2cm;" class="mytable"><%=sr++%></td>
										
										<td  style="width: 2cm;" class="mytable"><%=rs.getString("username")%></td>

										<td  style="width: 2cm;" class="mytable"><%=rs.getString("ip_address")%></td>
										<td  style="width: 2cm;" class="mytable"><%=rs.getString("added_on")%></td>
										<%
										String image1 = rs.getString("image1");
										String image2 = rs.getString("image2");
										
										System.out.println("image1 :"+image1+" image2 :"+image2);
										
										%>
										<td class="mytable">
										<a href="activities\<%=image2 %>" target="_blank" title="click to view image in another tab">
										<img src="activities\<%=image2 %>" style="height: 50px; width: 50px;"></img></a></td>
										<td class="mytable">
										<a href="activities\<%=image1 %>" target="_blank" title="click to view image in another tab">
										<img src="activities\<%=image1 %>" style="height: 50px; width: 50px;"></img></a></td>
									</tr>
									<%
										}
									%>
								</table>
								<br />


						</div>

						<%
							if (request.getParameter("userId") != null) {

									String userId = request.getParameter("userId");

									PreparedStatement pst = con
											.prepareStatement("DELETE FROM usermem_info where id = '" + userId + "'");
									pst.executeUpdate();

									response.sendRedirect("viewUsers.jsp?removeUserSucc");

								}
						%>
						<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

			</div>
			</div>
		</div>
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