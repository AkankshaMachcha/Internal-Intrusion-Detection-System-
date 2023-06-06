package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Logout extends HttpServlet {
	public static String cookies="20";
	private static final long serialVersionUID = 1L;
	public static String impdty = cookies+"17";
	public void init()
	{
		try
		{
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
    public Logout() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try
		{
			HttpSession session=req.getSession();
			System.out.println("2nd session id="+session.getId());
			session.invalidate();
			session=null;
			//req.getRequestDispatcher("index.jsp").forward(req, res);
			res.sendRedirect("index.jsp");
			return;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public void distroy()
	{
		try
		{
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
