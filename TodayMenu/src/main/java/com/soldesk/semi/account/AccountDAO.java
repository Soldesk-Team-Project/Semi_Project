package com.soldesk.semi.account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.soldesk.semi.hc.DBManager;

public class AccountDAO {

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

	public static void logOut(HttpServletRequest request) {
		HttpSession hs = request.getSession();
		hs.setAttribute("accountInfo", null);
		
		request.setAttribute("r", "로그아웃 성공!");
	}

	public static void loginCheck(HttpServletRequest request) {
		
		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("accountInfo");
		
		if(a == null) {
			request.setAttribute("loginPage", "account/login.jsp");
		} else {
			request.setAttribute("loginPage", "account/loginOK.jsp");
		}
	}

	public static void login(HttpServletRequest request) {

		String userId = request.getParameter("id");
		String userPw = request.getParameter("pw");
		DateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");

		String idd =(String) request.getAttribute("idd");	
		String pww =(String) request.getAttribute("pww");	
		
		if (idd !=null) {
			userId = idd;
			userPw = pww;
		}
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from ACCOUNT1 where a_id = ?";
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				String dbPW = rs.getString("a_pw");
				
				if (userPw.equals(dbPW)) {
					Account a = new Account();
					a.setId(rs.getString("a_id"));
					a.setPw(rs.getString("a_pw"));
					a.setName(rs.getString("a_name"));
					a.setAddr(rs.getString("a_addr"));
					a.setPhone(rs.getString("a_phone"));
					a.setSpend(rs.getString("a_spend"));
					a.setPay(rs.getString("a_pay"));
					a.setBirth(rs.getString("a_birth"));
					a.setQestion(rs.getString("a_qestion"));
					a.setAnswer(rs.getString("a_answer"));
					
					System.out.println(rs.getString("a_birth"));
					System.out.println(rs.getString("a_spend"));
					System.out.println(rs.getString("a_pay"));

					HttpSession hs = request.getSession();
					hs.setAttribute("accountInfo", a);
					hs.setMaxInactiveInterval(60000);
					
					request.setAttribute("r", "로그인 성공!");
				} else {
					request.setAttribute("r", "비밀번호 오류입니다.");
				}
			} else {
				request.setAttribute("r", "존재하지 않은 회원입니다.");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

	public static void reg(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement  pstmt = null;
		
		String sql = "insert into ACCOUNT1 values (?,?,?,?,?,?,?,?,?,?)";
		
		try {
			request.setCharacterEncoding("UTF-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

		String id =	request.getParameter("id");
		String pw =	request.getParameter("pw");
		String name =	request.getParameter("name");
		String birth = request.getParameter("birth");
		String addr =	request.getParameter("addr");
		String phone =	request.getParameter("phone");
		String spend = "0 0 0 0 ";
		String pay = "0";
		String qestion =	request.getParameter("qestion");
		String answer =	request.getParameter("answer");

/*		System.out.println(id);	 // 개발자 확인용
		System.out.println(pw);
		System.out.println(name);
		System.out.println(birth);
		System.out.println(addr);
		System.out.println(phone);	
		System.out.println(qestion);
		System.out.println(answer);*/

		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		pstmt.setString(4,birth);
		pstmt.setString(5, addr);
		pstmt.setString(6, phone);
		pstmt.setString(7, spend);
		pstmt.setString(8, pay);		
		pstmt.setString(9, qestion);
		pstmt.setString(10, answer);
	
				
		if (pstmt.executeUpdate()==1) {
			System.out.println("가입 성공!");
		}
		else {
			System.out.println("가입 실패");
		}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB 서버 문제");
		}
		finally {
			DBManager.close(con, pstmt, null);
		}
		
	}

	public static void deletAccount(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement  pstmt = null;
		String sql = "delet ACCOUNT1 where a_id=?";
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			String id = request.getParameter("id");
			pstmt.setString(1,id);
			
			if(pstmt.executeUpdate()==1) {
			System.out.println("로그아웃 성공");
			}
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			DBManager.close(con, pstmt, null);
		}
	}

	public static void updateAccount(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement  pstmt = null;
		String sql = "update  ACCOUNT1 set a_name=?,a_pw=?,a_addr=?,a_phone=?,a_qestion=?,a_answer=?  where a_id=?";
		try {
			request.setCharacterEncoding("UTF-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			

		String name =request.getParameter("name");
		String pw =	request.getParameter("pw");
		String pw2 =request.getParameter("pw2");	
		String addr =request.getParameter("addr");
		String phone =request.getParameter("phone");
		String qestion =request.getParameter("qestion");
		String answer =request.getParameter("answer");
	
		
//		System.out.println(name);
//		System.out.println(pw);
//		System.out.println(pw2);
//		System.out.println(addr);
//		System.out.println(phone);
//		System.out.println(qestion);
//		System.out.println(answer);

		pstmt.setString(1, name);
		
		if (pw2.length()==0) {
			pstmt.setString(2, pw);	
		}
		else {
			pstmt.setString(2, pw2);
		}
		pstmt.setString(3, addr);
		pstmt.setString(4, phone);
		pstmt.setString(5, qestion);
		pstmt.setString(6, answer);		
		pstmt.setString(7, request.getParameter("id"));
		
		request.setAttribute("idd", request.getParameter("id"));
		request.setAttribute("pww", pw2);
		if (pstmt.executeUpdate()==1) {
			System.out.println("수정 성공");	
		}
		else {
			System.out.println("수정 실패");
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			DBManager.close(con, pstmt, null);
		}
		
	}

	public static void updateAccountBook(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
	}

}
