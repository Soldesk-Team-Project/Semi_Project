package com.soldesk.semi.RM;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RandomMenuC")
public class RandomMenuC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if (request.getParameter("rmbtn") != null) {
			request.setAttribute("randomResultPage", "rm/randomMenuResult.jsp");
		} else {
			request.setAttribute("randomResultPage", "rm/randomMenuPage.jsp");
		}
		
		request.setAttribute("loginPage", "account/login.jsp");
		request.setAttribute("contentPage", "rm/randomMenu.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
