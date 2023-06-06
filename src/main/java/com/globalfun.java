package com;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class globalfun extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public String putsessionname(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String curruntuser = session.getAttribute("username").toString();
		return curruntuser;

	}

}
