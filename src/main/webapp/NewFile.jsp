<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function show(elementId) { 
	  //now we kick out both conditional we do not need them anymore

	  //we hide both forms
	  document.getElementById("order").style.display="none";
	  document.getElementById("retrieve").style.display="none";

	  //and then we simply show wanted one isn't that nicer and cleaner?
	  document.getElementById(elementId).style.display="block";
	}
</script>
</head>
<body>
<button type="button" onclick="show('order');">Order Form</button>
<button type="button" onclick="show('retrieve');">Retrieval Form</button>
</body>
</html>