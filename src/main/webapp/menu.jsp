 <%
 if(session.getAttribute("username")!=null)
 {
	 %> <ul>
      <li><a class="active" href="index.jsp">Home</a></li>
      <li><a href="adminlogin.jsp">Admin</a></li>
      <li><a href="services.html">About us</a></li>
      <li><a href="contact.html">Contact</a></li>
       <li><a href="Logout">Logout</a></li>
      </li> 
    </ul>
    
    

    	 <%
	 } else 
		 {%>
		 
		 <ul>
      <li><a class="active" href="index.jsp">IIDS</a></li>
      <li><a href="adminlogin.jsp">Admin</a></li>
      <li><a href="services.html">About us</a></li>
      <li><a href="contact.html">Contact</a></li>
       <!-- <li><a href="Logout">Logout</a></li> -->
      </li>  
    </ul>
		 
		 
		 
		 <%}
		 
		 
		 
		 
		 
		 
		 %>