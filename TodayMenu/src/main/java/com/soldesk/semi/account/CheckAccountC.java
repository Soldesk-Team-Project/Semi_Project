package com.soldesk.semi.account;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CheckAccountC")
public class CheckAccountC extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AccountDAO.duplicateIdCheck(request);
		String isDuplicated =  (String) request.getAttribute("test");
		
		System.out.println("-----");
		System.out.println(isDuplicated);
		   
		PrintWriter writer = response.getWriter();	      
		
		String jsonTxt = String.format("{\"isDuplicated\":\"%s\", \"msg\":\"success\"}", isDuplicated);
		writer.print(jsonTxt); 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
