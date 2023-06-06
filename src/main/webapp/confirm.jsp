<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function myFunction() {
    var txt;
    var r = confirm("This Web site Virus infected Do you Want to Continue");
    if (r == true) {
    	    window.location.href="confirm1.jsp";
    	     
    } else {
    	window.location.href="home.jsp";
    }
    document.getElementById("demo").innerHTML = txt;
}
</script>


</head>
<body onload="myFunction()">

</body>
</html>