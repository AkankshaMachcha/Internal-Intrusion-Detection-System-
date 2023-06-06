package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DbConnection;

/**
 * Servlet implementation class UpdateUser
 */
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String mobno = request.getParameter("mobno");
		String email = request.getParameter("email");
		String userId = request.getParameter("userId");

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		try {

			Connection con = DbConnection.getConnection();

			PreparedStatement ps = con.prepareStatement("UPDATE usermem_info set email = '" + email + "', mobno = '"
					+ mobno + "', username = '" + username + "' , password = '" + password + "'    where id = '" + userId + "'");
			int rs = ps.executeUpdate();

			if (rs > 0) {
				response.sendRedirect("viewUsers.jsp?updated");
			} else {
				response.sendRedirect("viewUsers.jsp?updateFailed");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
