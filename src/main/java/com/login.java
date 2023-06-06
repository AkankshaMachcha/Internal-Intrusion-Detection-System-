
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
import com.util.MyStringRandomGen;

public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String impdtm = "3";
	public static String impdtd = "15";
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String username;
	String password;

	public void init() {

		try {

			con = DbConnection.getConnection();
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			res.setContentType("text/html");
			PrintWriter out = res.getWriter();

			username = req.getParameter("username");
			password = req.getParameter("password");
			System.out.println(username + password);
			ps = con.prepareStatement("select * from usermem_info where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			HttpSession session = req.getSession(true);

			if (rs.next()) {
				session.setAttribute("username", username);
				session.setAttribute("password", password);

				String phone = rs.getString("mobno");

				String usb = rs.getString("usb");
				String web = rs.getString("web");
				String directory = rs.getString("directory");
				String date = rs.getString("date");
				int userId = rs.getInt("id");

				putda(userId, username, web, usb, directory, date);

				// java.util.Date dategot = new java.util.Date();
				// System.out.println(dategot);
				MyStringRandomGen RT = new MyStringRandomGen();
				String RandNo = RT.generateRandomString();
				setotp(RandNo, username, password);
				System.out.println(phone + " " + RandNo);

				res.sendRedirect("OTPconfig.jsp");

			} else {
				out.print("<h1>Sorry, username or password error!</h1>");
				req.getRequestDispatcher("index.jsp").forward(req, res);

			}

			out.close();
		}

		catch (Exception e1) {
			e1.printStackTrace();
		}
	}

	public void distroy() {
		System.out.println("test3");
		try {
			ps.close();
			con.close();
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}

	public void setotp(String otpcode, String uusername, String upassword) {
		try {
			PreparedStatement ps = con
					.prepareStatement("update usermem_info set otpcode=? where username=? and password=?");
			ps.setString(1, otpcode);
			ps.setString(2, uusername);
			ps.setString(3, upassword);
			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void putda(int userId, String username, String web, String usb, String directory, String date) {
		try {
			new LoadForm();

			Connection con = DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("delete from tempp");
			ps.executeUpdate();

			PreparedStatement ps1 = con
					.prepareStatement("insert into tempp(username,web,usb,directory,date,user_id) values(?,?,?,?,?,?)");
			ps1.setString(1, username);
			ps1.setString(2, web);
			ps1.setString(3, usb);
			ps1.setString(4, directory);
			ps1.setString(5, date);
			ps1.setInt(6, userId);
			ps1.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
