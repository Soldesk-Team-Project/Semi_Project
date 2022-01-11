package com.soldesk.semi.cal;

import java.text.DecimalFormat;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

public class CalculatorDAO {

	public static void Div(HttpServletRequest request) {
		
		try {
			
	
		DecimalFormat df = new DecimalFormat("###,###");
		
		int c =Integer.parseInt(request.getParameter("cost"));
		int p = Integer.parseInt(request.getParameter("people"));
		int result = c/p;
		
		String r2 = df.format(result);
		
		System.out.println(r2);
		
		Remain r = new Remain(c, p, r2, p);
		
		request.setAttribute("rr", r);
	} 
		
		catch (Exception e) {
		e.printStackTrace();
		
	}	
	}

	

}
