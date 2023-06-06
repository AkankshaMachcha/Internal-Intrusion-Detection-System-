<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
function one()
{
	document.getElementById("two").style.display="block";
	window.open("start1.jsp");
	/* document.getElementById("three").style.display="none"; */
	
}
 </script>
 <script type="text/javascript">
function two()
{
	document.getElementById("three").style.display="block";
	window.open("start2.jsp");
	/* document.getElementById("three").style.display="none"; */
	
}
 </script>
 
 



</head>
<body>
<input type="button" value="one" id="one" onclick="one()">
<input type="button" value="two" id="two" style="display: none" onclick="two()">
<input type="button" value="three" id="three" style="display: none">
</body>
</html>