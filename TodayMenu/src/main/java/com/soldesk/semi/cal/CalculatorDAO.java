package com.soldesk.semi.cal;

import javax.servlet.http.HttpServletRequest;

public class CalculatorDAO {

	public static void Div(HttpServletRequest request) {
		
		int c =Integer.parseInt(request.getParameter("cost"));
		int p = Integer.parseInt(request.getParameter("people"));
		int result = c/p;
		
		System.out.println(result);
		
		Remain r = new Remain();
		r.setC(c);
		r.setP(p);
		r.setR(result);
		
		request.setAttribute("rr", r);
			
	}

	public static void one(HttpServletRequest request) {

		
		
	}
}
