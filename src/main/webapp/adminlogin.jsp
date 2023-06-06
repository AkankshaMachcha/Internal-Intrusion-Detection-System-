<HTML>
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

 
<script>  
function validate(){  
	
	if(document.getElementById("fname").value=="")
   	{
   		alert("First name should not be blank");
   		document.getElementById("fname").focus();
   		return false;
   	}
	else
		{
	       
	    	var fname = document.myform.fname; 
	    var letters = /^[A-Za-z]+$/;  
	    if(!fname.value.match(letters))   
	    {  
	    alert('First name must have alphabet characters only');  
	    document.getElementById("fname").focus();  
	    return false;  
	    }  
	      
		}
	if(document.getElementById("lname").value=="")
   	{
   		alert("Last name should not be blank");
   		document.getElementById("lname").focus();
   		return false;
   	}
	else
	{
       
    	var lname = document.myform.lname.value; 
    var letters = /^[A-Za-z]+$/;  
    if(!lname.match(letters))   
    {  
    alert('Last name must have alphabet characters only');  
    document.getElementById("lname").focus();  
    return false;  
    }  
      
	}
	if(document.getElementById("dob").value=="")
   	{
   		alert("Date of Birth should not be blank");
   		document.getElementById("dob").focus();
   		return false;
   	}
	if(document.getElementById("gender").value=="")
   	{
   		alert("Gender should not be blank");
   		document.getElementById("gender").focus();
   		return false;
   	}
	if(document.getElementById("email").value=="")
   	{
   		alert("Email should not be blank");
   		document.getElementById("email").focus();
   		return false;
   	}
	
	if(document.getElementById("mobile").value=="")
   	{
   		alert("Mobile Number should not be blank");
   		document.getElementById("mobile").focus();
   		return false;
   		
   	}
	
	if(document.getElementById("username").value=="")
   	{
   		alert("username should not be blank");
   		document.getElementById("username").focus();
   		return false;
   	}
	if(document.getElementById("password").value=="")
   	{
   		alert("password should not be blank");
   		document.getElementById("password").focus();
   		return false;
   	}
}  
</script>
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
					<li><a href="services.html">About us</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</nav>

		</div>
	</div>

<img src="images/re.jpg" alt="" class="img-fluid img-rounded fat-ab"
			height=400 width=1500>
	</div>
<div id="featured">
			<div class="container">
			<div align="center">
			 <form action="../com/adminlogin" method="post">	
       
      <h2> Admin Login</h2>
      <br>   <br>
			<table cellspacing="10">
		 
			
			<tr><th><h3>User Name:</h3></th><td><input type="text" name="username" class="input_text" required placeholder="Enter Username"/></td></tr>
		   <tr>  <td>.</td></tr>
		   
            <tr><th>Password:</th><td><input type="password" name="password" class="input_text" required placeholder="Enter Password" /></td></tr>

            <!-- <tr><td><input type="submit" value="Submit" class="button"/></td>
              </tr> -->
            
            
  </table><br/>
  
  <input type="submit" value="Submit" class="button"/>
  </form>
 
			</div>
			</div>
		</div>
	<!-- Copyright -->
	<div id="copyright">
		<div class="container mt-2">
			<a href="">IIDS </a>
		</div>
	</div>

</body>
</html>