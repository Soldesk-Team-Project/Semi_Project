package com.soldesk.semi.cal;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soldesk.semi.account.AccountDAO;

@WebServlet("/Cal_oneC")
public class Cal_oneC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "cal/cal_one.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CalculatorDAO.one(request);
		
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "cal/cal_oneResult.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}

}
