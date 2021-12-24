package com.soldesk.semi.account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PW_FindAccountC")
public class PW_FindAccountC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		AccountDAO.findPW(request);
		
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "account/findPWResult.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);		
	}

}
