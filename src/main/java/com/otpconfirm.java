package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DbConnection;

public class otpconfirm extends HttpServlet {

    public static String impdtd = "15";
    private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			HttpSession session = request.getSession(true);
			String otp = request.getParameter("otp");
			String username = session.getAttribute("username").toString();
			String password = session.getAttribute("password").toString();

			Connection con = DbConnection.getConnection();
			PreparedStatement ps = con
					.prepareStatement("select otpcode from usermem_info where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				if (otp.equals(rs.getString("otpcode"))) {
					response.sendRedirect("home.jsp");

				} else {
					response.sendRedirect("OTPconfig.jsp?err");
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
