package com.soldesk.semi.all;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soldesk.semi.account.AccountDAO;

@WebServlet("/RestaurantPageController")
public class RestaurantPageController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int p = Integer.parseInt(request.getParameter("p"));
		
		allDAO.getAdao().getAllRestaurant(request);
		allDAO.getAdao().paging(p, request);
		
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "all/allRestaurant.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		
		
	}

}
