package com.soldesk.semi.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soldesk.semi.account.AccountDAO;

@WebServlet("/BoardUpdateC")
public class BoardUpdateC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BoardDAO.getBoard(request);		
		
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "board/updateBoard.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BoardDAO.updateBoard(request);
		BoardDAO.getBoard(request);
		
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "board/boardDetail.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

}