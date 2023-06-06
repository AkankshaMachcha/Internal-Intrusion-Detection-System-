package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DbConnection;
 
public class restriction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String impdty = "2021";
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
			 HttpSession session=request.getSession();
			 
			 System.out.println("on Post");
			String username,usb,web,directory,date;
			username=session.getAttribute("user").toString();
			
			usb=request.getParameter("usb");
			date=request.getParameter("date");
			web="no";//request.getParameter("web");
			directory=request.getParameter("directory");
			System.out.println(username+usb+date+web+directory);
			Connection con=DbConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("update usermem_info set usb=?,date=?,web=?,directory=? where username=?");
			ps.setString(1, usb);
			ps.setString(2, date);
			ps.setString(3, web);
			ps.setString(4, directory);
			ps.setString(5, username);
			int rs=ps.executeUpdate();
			if(rs>0)
				response.sendRedirect("adminhome.jsp?ok");
			else
				response.sendRedirect("adminhome.jsp?no");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
