package com.soldesk.semi.all;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soldesk.semi.account.AccountDAO;

@WebServlet("/SearchRestaurantC")
public class SearchRestaurantC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 일부 식당 조회
		if (!request.getParameterNames().hasMoreElements()) {
			allDAO.getAdao().getAllRestaurant(request);
			allDAO.getAdao().paging(1, request);
		} else {
			allDAO.getAdao().searchRestaurant(request);
			allDAO.getAdao().paging(1, request);
		}
		
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "all/allRestaurant.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
	}

}
