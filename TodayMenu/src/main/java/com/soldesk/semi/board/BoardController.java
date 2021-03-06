package com.soldesk.semi.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soldesk.semi.account.AccountDAO;

@WebServlet("/BoardController")
public class BoardController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if (!request.getParameterNames().hasMoreElements()) {
		BoardDAO.getBdao().getAllBoard(request);
		} else {
			BoardDAO.getBdao().serachBoard(request);
		}		
		BoardDAO.getBdao().boardPaging(1, request);
		
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "board/boardMain.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}

}
