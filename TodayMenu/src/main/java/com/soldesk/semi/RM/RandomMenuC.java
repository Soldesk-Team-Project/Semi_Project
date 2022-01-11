package com.soldesk.semi.RM;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soldesk.semi.account.AccountDAO;

@WebServlet("/RandomMenuC")
public class RandomMenuC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		if(!request.getParameterNames().hasMoreElements()) {
			randomDAO.randomMenuBasic(request);
		} else {
			randomDAO.randomMenu(request);			
			randomDAO.randomDessert(request);
			randomDAO.randomRestaurant(request);
		}
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "rm/randomMenu.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

}
