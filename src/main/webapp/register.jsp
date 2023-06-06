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

 <script type="text/javascript">
function loadXMLDoc()
{
	
var xmlhttp;
var k=document.getElementById("username").value;
var urls="pass.jsp?ver="+k;
 
if (window.XMLHttpRequest)
  {
  xmlhttp=new XMLHttpRequest();
  }
else
  {
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4)
    {
        //document.getElementById("err").style.color="red";
        var ss=xmlhttp.responseText;
        if(ss.match("Name already taken"))
        	{
        	document.getElementById("mySubmit").disabled = true;
        	document.getElementById("err").innerHTML=xmlhttp.responseText;
        	}
        else{
        	document.getElementById("mySubmit").disabled = false;
        document.getElementById("err").innerHTML=xmlhttp.responseText;
        }
    }
  }
xmlhttp.open("GET",urls,true);
xmlhttp.send();
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
				
				<li><a href="adminhome.jsp">Home</a></li>
				      <li><a class="active" href="register.jsp">Add User</a></li>
				<li><a  href="viewUsers.jsp">Users</a></li>
						<li><a href="activities.jsp">Activities</a></li>
				<li><a href="Logout">Logout</a></li>
				</ul>
			</nav>

		</div>
	</div>

	<img src="images/userRegistrationpage_reaplced.jpg" alt="" class="img-fluid img-rounded fat-ab"
			height=300 width=1500>
	</div>
<div id="featured">
			<div class="container">
			<div align="center">
		  <form action="userregisterservlet" method="post" id="myform" name="myform" onsubmit="return validate()">

<h2> User Registration</h2>
<table cellpadding="5" cellspacing="10">
<tr>
<td>First Name</td>
<td><input type="text" name="fname" id="fname" placeholder="First Name" class="input_text"></td>
</tr>
<td>.</td>
<tr>
<td>Last Name</td>
<td><input type="text" name="lname" id="lname" placeholder="Last Name" class="input_text"></td>
</tr>
<td>.</td>
<tr>
<td>Date Of Birth</td>
<td><input type="date" name="dob" id="dob" placeholder="Date Of Birth" class="input_text"></td>
</tr>
<td>.</td>
<tr>
<td>Gender</td>
<td>&nbsp;Male&nbsp;<input type="radio" name="gender" id="gender" value="male"></input> &nbsp;Female&nbsp;<input type="radio" name="gender" id="gender" value="female"></input>
</tr>
<td>.</td>
<tr>
<td>Email</td>
<td><input type="email" name="email" id="email" placeholder="Email" class="input_text"></td>
</tr>
<td>.</td>
<tr>
<td>Mobile</td>
<td><input type="text" name="mobile" id="mobile" pattern="[789][0-9]{9}" maxlength="10" title=" Only Number allowed Start with 7 or 8 or 9" placeholder="Mobile Number" class="input_text"></td>
<td style="background: none;"><span id="mobile1" ></span></td>
</tr>
<td>.</td>
<tr>
<td>Username</td>
<td><input type="text" name="username" id="username" placeholder="Username" class="input_text" onkeyup="loadXMLDoc()"></td>
<td><span id="err"></span></td>
</tr>
<td>.</td>
<tr>
<td>Password</td>
<td><input type="text" name="password" id="password" placeholder="Password" class="input_text"></td>
</tr>
<td>.</td>
<tr>
<td></td>
<td><input type="submit" name="submit" value="Submit" class="button" id="mySubmit">
<input type="reset" value="Reset" class="button"></td>
</tr>
</table>
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