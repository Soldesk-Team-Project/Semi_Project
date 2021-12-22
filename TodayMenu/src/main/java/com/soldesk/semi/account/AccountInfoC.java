package com.soldesk.semi.account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AccountInfoC")
public class AccountInfoC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "account/accountInfo.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// DB에 소비데이터 등록하기
		AccountDAO.updateSpend(request);
		
		request.setAttribute("loginPage", "account/login.jsp");
		request.setAttribute("contentPage", "account/accountInfo.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
