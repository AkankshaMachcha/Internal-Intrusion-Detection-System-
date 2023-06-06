package com;
 
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DbConnection;

 
public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String username;
	String password;
     
	public void init()
	{
		
		try
		{
			
			con = DbConnection.getConnection();
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
	}
	 
	 
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		try 
		{
			
			res.setContentType("text/html");  
	        PrintWriter out=res.getWriter();
	        
	        
	        
			username=req.getParameter("username");
			password=req.getParameter("password");
			ps=con.prepareStatement("select * from admin where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			HttpSession session=req.getSession(true);
			
			if (rs.next()) 
				{
				 	session.setAttribute("username",username);
					 
			     //   System.out.println("Login Done");
			       
					res.sendRedirect("adminhome.jsp");
			        //req.getRequestDispatcher("home.jsp").forward(req, res);
				} 
			else 
				{
				//PrintWriter out=response.getWriter();            

			     res.setContentType("text/html");  
			        out.println("<script type=\"text/javascript\">");  
			        out.println("alert('Enter Correct User Name and Password ');");  
			        out.println("document.location.href='adminlogin.jsp'");
			        out.println("</script>");
				
				/*out.print("<h1>Sorry, username or password error!</h1>"); 
				 	req.getRequestDispatcher("index.jsp").forward(req, res);*/
					
				}

		
		
			out.close();  
			new LoadForm();
		}
	
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
	}
	public void distroy()
	{
		System.out.println("test3");
		try
		{
			ps.close();
			con.close();
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
	}

}
