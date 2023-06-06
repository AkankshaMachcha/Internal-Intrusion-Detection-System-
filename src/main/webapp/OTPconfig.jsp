<%if(session.getAttribute("username")!=null)
{
	 %><!DOCTYPE HTML>
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


<script type="text/javascript">
	function start1() {
		document.getElementById("start2").style.display = "block";
		var a = window.open("start1.jsp");
		document.getElementById("start1").style.display = "none";
		Thread.sleep(4000);

	}
</script>


<script type="text/javascript">
	function start2() {
		document.getElementById("start3").style.display = "block";
		var b = window.open("start2.jsp");
		;
		document.getElementById("start2").style.display = "none";
		// b.close();
	}
</script>
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
					<li><a href="Logout">Logout</a></li>
				</ul>
			</nav>

		</div>
	</div>

	<img src="images/otp.png" alt="" class="img-fluid img-rounded fat-ab"
			height=400 width=1500>
	<div id="featured">
		<div class="container">
			<div align="center">
      <div class="title">
       
        <div class="contact-form" id="start1" >
        <h1>You Will Receive OTP in few Seconds </h1>
        <br>
        <input type="button" value="Proceed" class="button" onclick="start1()"/>
        </div>
        
        <div class="contact-form"  id="start2" style="display: none">
         <h1>Click Proceed to Enter OTP </h1>
         <br>
        <input type="button" value="Proceed" class="button" onclick="start2()" style="color: red"/>
        </div>
        
        
        
        
        <div class="contact-form" id="start3"  style="display: none">
 <form action="otpconfirm" method="post">	
       
      <h1>Enter OTP</h1>
      <br>
			<table cellspacing="5">
		 
			<tr>
		 <td><input type="text" name="otp" class="input_text" required placeholder="Enter One Time Password"/></td>
            
            <td></td>
           
      </tr>
            
            
  </table><br/>
  <input type="submit" value="Submit" class="button"/>
   
  </form>
 
                            
      </div>
      
     
    </div>			</div>
		</div>
	</div>
	<!-- Copyright -->
	<div id="copyright">
		<div class="container">
			 <a href="">IIDS</a> 
		</div>
	</div>

</body>
</html>
<%}else
{
	response.sendRedirect("index.jsp");
}
	%>