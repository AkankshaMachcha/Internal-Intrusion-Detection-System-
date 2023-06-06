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

import com.util.DbConnection;

public class userregisterservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String name;
	String lastname;
	String dob;
	String gender;
	String email;
	String mobno;

	String username;
	String password;

	public void init() {

		try {

			con = DbConnection.getConnection();
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {

		name = req.getParameter("fname");
		dob = req.getParameter("dob");
		lastname = req.getParameter("lname");

		gender = req.getParameter("gender");
		email = req.getParameter("email");
		mobno = req.getParameter("mobile");

		username = req.getParameter("username");
		password = req.getParameter("password");

		System.out.println("name " + name);
		System.out.println("dob " + dob);
		System.out.println("lastname " + lastname);

		System.out.println("gender " + gender);
		System.out.println("email " + email);
		System.out.println("mobno " + mobno);

		System.out.println("username" + username);
		System.out.println("password" + password);

		try {

			PreparedStatement pst = con.prepareStatement("SELECT * FROM usermem_info where email = '" + email
					+ "' OR mobno ='" + mobno + "' OR username='" + username + "' ");
			ResultSet rst = pst.executeQuery();

			if (rst.next()) {
				response.sendRedirect("register.jsp?userExist");
			} else {

				PrintWriter out = response.getWriter();

				ps = con.prepareStatement(
						"insert into usermem_info (name,lastname,dob,gender,email,mobno,username,password)"
								+ "values(?,?,?,?,?,?,?,?)");
				ps.setString(1, name);
				ps.setString(2, lastname);
				ps.setString(3, dob);
				ps.setString(4, gender);
				ps.setString(5, email);
				ps.setString(6, mobno);
				ps.setString(7, username);
				ps.setString(8, password);

				int result = ps.executeUpdate();

				if (result > 0) {
					System.out.println("Ragistration successfull");
					out.println("<html>");
					out.println("<body>");
					out.println("<center>");
					out.println("<h1>Data Inserted Successfully</h1>");
					out.println("<a href=index.jsp><h2>Login Here</h2></a>");
					out.println("</center>");
					out.println("</body>");
					out.println("</html>");
					response.sendRedirect("register.jsp");

				} else {
					System.out.println("Ragistration failed");
				}
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}

	}

	public void distroy() {

		try {

			con.close();
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}

}
