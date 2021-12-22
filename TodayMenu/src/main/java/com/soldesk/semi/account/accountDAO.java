package com.soldesk.semi.account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import com.soldesk.semi.hc.DBManager;

public class accountDAO {

	public static void deleteAccount(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "delete account1 where a_id=?";
		
		try {
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
		
			String id = (String)request.getSession().getAttribute("id");
			pstmt.setString(1, id);
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("탈퇴 성공!");
				request.setAttribute("r", "탈퇴 성공!");
			} else {
				System.out.println("탈퇴 실패!");
				request.setAttribute("r", "탈퇴 실패!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB 서버 오류");
		} finally {
			DBManager.close(con, pstmt, null);
		}				
	}

	public static void updateSpend(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "update account1 set a_spend=? where a_id=?";
		
		try {
			String id = (String)request.getSession().getAttribute("id");
			
			// 소비금액
			int pay = Integer.parseInt(request.getParameter("pay"));
			
			// 지출 종류 (1. 식비 / 2. 카페 / 3. 쇼핑 / 4. 미용)
			String where = request.getParameter("where");
			System.out.println(where);
			
			// 지출 종류를 위해 배열로 처리
			String spend = request.getParameter("spend");
			// 배열 넣을 빈 깡통
			String[] spend2 = spend.split(" ");
			int[] spend3 = Arrays.asList(spend2).stream().mapToInt(Integer::parseInt).toArray();
			
			// 종류에 따라 소비금액 할당
			if (where.equals("1")) {
				spend3[0] += pay; 
			} else if (where.equals("2")) {
				spend3[1] += pay;
			} else if (where.equals("3")) {
				spend3[2] += pay; 
			} else {
				spend3[3] += pay; 
			}
			
			// 값을 넣고 출력을 위해 문자열로 변환
			spend = Arrays.toString(spend3).replaceAll("[^0-9 ]", "");
			System.out.println(spend);
			
			// 변환 된 값 업데이트 하기			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, spend);
			pstmt.setString(2, id);
			
			// 자바스크립트에서 사용할 배열 보내기
			request.setAttribute("spend", spend);
			
			// 등록 되는지 확인하기
			if(pstmt.executeUpdate() == 1) {
				System.out.println("등록 성공!");
				request.setAttribute("r", "등록 성공!");
			} else {
				System.out.println("등록 실패!");
				request.setAttribute("r", "등록 실패!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB 서버 오류");
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
	}

}
