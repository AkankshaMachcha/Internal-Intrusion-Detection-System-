<%if(session.getAttribute("username")!=null)
{
	 %>
	  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.util.*"%>
     <%@page import="com.*"%>
    <%@page import="java.sql.*"%>
    <%@ page  import=" org.jsoup.nodes.Document" %>
  <%@ page  import=" org.jsoup.nodes.Element" %>
  <%@ page  import=" org.jsoup.select.Elements" %>
   <%@ page  import="org.jsoup.Jsoup" %>
   <%@ page  import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>IDS</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Tienne' rel='stylesheet' type='text/css'>
 
</head>

<body>
 <%
 if(request.getParameter("err")!=null)
 {
	 //out.println("<script>alert('OTP Does Not Match')</script>");
 }
 
 %>
<div class="menu-wrapper">
  <div class="menu">
    <%@ include file="menu.jsp" %>  
  </div>
  <div class="clearing"></div>
</div>
<div class="wrapper">
  <div class="header-wrapper">
    <div class="logo">
         <%@ include file="projectname.jsp" %>
    </div>
    <div class="right-panel">
     
  </div>
  <div class="clearing"></div>
  
  <div class="panel-wrapper">
    <div class="panel marRight30">
    
      <div class="title">
       <h1>Web Search Result</h1>
        
        <div class="contact-form">
  <%
/* String searchquery=request.getParameter("searchquery"); */

String searchquery=session.getAttribute("websearch").toString();
SendData s=new SendData();
s.send("web");
/* SendData s=new SendData();
s.send() */
 
searchquery = searchquery.replaceAll(" ", "+").toLowerCase();

  String GOOGLE_SEARCH_URL = "https://www.google.com/search";
  String searchTerm=searchquery;
int num=20;
 
String searchURL = GOOGLE_SEARCH_URL + "?q="+searchTerm+"&num="+num;
//without proper User-Agent, we will get 403 error
Document doc = Jsoup.connect(searchURL).userAgent("Mozilla/5.0").get();
 
//below will print HTML data, save it to a file and open in browser to compare
// System.out.println(doc.html());
 
//If google search results HTML change the <h3 class="r" to <h3 class="r1"
//we need to change below accordingly
Elements results = doc.select("h3.r > a");

  for (Element result : results)
  {
    String linkHref = result.attr("href");
    String linkText = result.text();
    
   // String l=linkHref.substring(6, linkHref.indexOf("&"));
String k= linkHref.substring(7, linkHref.indexOf("&")); 
		//System.out.println(k);
		/*  
		String part[]=k.split("/");
		List<String> splitList = new ArrayList<String>(Arrays.asList(part));
		System.out.println(splitList);
		if(splitList.contains("www.facebook.com"))
		{
		System.out.println("Match Found");	
		splitList.clear();
		break;
		}
	  // System.out.println(splitList);
	    
		
		 */
		
		
	    
    out.println("<html>");
	out.println("<body>");
	out.println("<center>");	
	String h="<a href='"+k+"'</a>";
	
    out.println(h+linkText);
	//System.out.println(h+linkText);
	 
	out.println("<center>");
	out.println("</body>");
	out.println("</html>");  
    out.println("<br>");
      
    %>
    
   <!--  <a href="Text::" + linkText + ", URL::" + linkHref.substring(6, linkHref.indexOf("&"))"></a><br> -->
    
 <%   } 
  %>
                            
      </div>
      
     
    </div>
    <div class="panel marRight30">
      
    </div>
    <div class="panel">
     <!--  <div class="title">
        <h1>Namivestib</h1>
        <h2>aliquam pellentesque</h2>
      </div> -->
      <div class="content">
         
  </div>
  <div class="panel-wrapper">
    
    </div>
    <div class="sidebar">
      <div class="panel">
        
      </div>
    </div>
  </div>
</div>
<div class="footer-wrapper">
  <div class="footer">
    <%@ include file="footer.jsp" %>
</div>
<div class="bottom">
  <div class="content">
     
  </div>
</div>
</body>
</html>
<%}else
{
	response.sendRedirect("index.jsp");
}
	%>
