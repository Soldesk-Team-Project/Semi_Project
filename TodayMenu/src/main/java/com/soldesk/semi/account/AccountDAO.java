package com.soldesk.semi.account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.soldesk.semi.hc.DBManager;

public class AccountDAO {

	public static void updateSpend(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;

		String sql = "update account1 set a_spend=? where a_id=?";

		try {
			String id = (String) request.getSession().getAttribute("id");

			// �Һ�ݾ�
			int pay = Integer.parseInt(request.getParameter("pay"));

			// ���� ���� (1. �ĺ� / 2. ī�� / 3. ���� / 4. �̿�)
			String where = request.getParameter("where");
			System.out.println(where);

			// ���� ������ ���� �迭�� ó��
			String spend = request.getParameter("spend");
			// �迭 ���� �� ����
			String[] spend2 = spend.split(" ");
			int[] spend3 = Arrays.asList(spend2).stream().mapToInt(Integer::parseInt).toArray();

			// ������ ���� �Һ�ݾ� �Ҵ�
			if (where.equals("1")) {
				spend3[0] += pay;
			} else if (where.equals("2")) {
				spend3[1] += pay;
			} else if (where.equals("3")) {
				spend3[2] += pay;
			} else {
				spend3[3] += pay;
			}

			// ���� �ְ� ����� ���� ���ڿ��� ��ȯ
			spend = Arrays.toString(spend3).replaceAll("[^0-9 ]", "");
			System.out.println(spend);

			// ��ȯ �� �� ������Ʈ �ϱ�
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, spend);
			pstmt.setString(2, id);

			// �ڹٽ�ũ��Ʈ���� ����� �迭 ������
			request.setAttribute("spend", spend);

			// ��� �Ǵ��� Ȯ���ϱ�
			if (pstmt.executeUpdate() == 1) {
				System.out.println("��� ����!");
				request.setAttribute("r", "��� ����!");
			} else {
				System.out.println("��� ����!");
				request.setAttribute("r", "��� ����!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB ���� ����");
		} finally {
			DBManager.close(con, pstmt, null);
		}

	}

	public static void logOut(HttpServletRequest request) {
		HttpSession hs = request.getSession();
		hs.setAttribute("accountInfo", null);

		request.setAttribute("r", "�α׾ƿ� ����!");
	}

	public static void loginCheck(HttpServletRequest request) {

		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("accountInfo");

		if (a == null) {
			request.setAttribute("loginPage", "account/login.jsp");
		} else {
			request.setAttribute("loginPage", "account/loginOK.jsp");
		}
	}

	public static void login(HttpServletRequest request) {

		String userId = request.getParameter("id");
		String userPw = request.getParameter("pw");
		DateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");

		String idd = (String) request.getAttribute("idd");
		String pww = (String) request.getAttribute("pww");

		if (idd != null) {
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
					hs.setMaxInactiveInterval(60000 * 50000);

					request.setAttribute("r", "�α��� ����!");
				} else {
					request.setAttribute("r", "��й�ȣ �����Դϴ�.");
				}
			} else {
				request.setAttribute("r", "�������� ���� ȸ���Դϴ�.");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}

	public static void reg(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;

		String sql = "insert into ACCOUNT1 values (?,?,?,?,?,?,?,?,?,?)";

		try {
			request.setCharacterEncoding("UTF-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String birth = request.getParameter("birth");
			String addr = request.getParameter("addr");
			String phone = request.getParameter("phone");
			String spend = "0 0 0 0 ";
			String pay = "0";
			String qestion = request.getParameter("qestion");
			String answer = request.getParameter("answer");

			/*
			 * System.out.println(id); // ������ Ȯ�ο� System.out.println(pw);
			 * System.out.println(name); System.out.println(birth);
			 * System.out.println(addr); System.out.println(phone);
			 * System.out.println(qestion); System.out.println(answer);
			 */

			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, birth);
			pstmt.setString(5, addr);
			pstmt.setString(6, phone);
			pstmt.setString(7, spend);
			pstmt.setString(8, pay);
			pstmt.setString(9, qestion);
			pstmt.setString(10, answer);

			if (pstmt.executeUpdate() == 1) {
				System.out.println("���� ����!");
			} else {
				System.out.println("���� ����");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB ���� ����");
		} finally {
			DBManager.close(con, pstmt, null);
		}

	}

	public static void deleteAccount(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "delete ACCOUNT1 where a_id=?";

		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			String id = request.getParameter("id");
			pstmt.setString(1, id);

			if (pstmt.executeUpdate() == 1) {
				System.out.println("�α׾ƿ� ����");
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}

	public static void updateAccount(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "update  ACCOUNT1 set a_name=?,a_pw=?,a_addr=?,a_phone=?,a_qestion=?,a_answer=?  where a_id=?";
		try {
			request.setCharacterEncoding("UTF-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			String name = request.getParameter("name");
			String pw = request.getParameter("pw");
			String pw2 = request.getParameter("pw2");
			String addr = request.getParameter("addr");
			String phone = request.getParameter("phone");
			String qestion = request.getParameter("qestion");
			String answer = request.getParameter("answer");

//		System.out.println(name);
//		System.out.println(pw);
//		System.out.println(pw2);
//		System.out.println(addr);
//		System.out.println(phone);
//		System.out.println(qestion);
//		System.out.println(answer);

			pstmt.setString(1, name);

			if (pw2.length() == 0) {
				pstmt.setString(2, pw);
			} else {
				pstmt.setString(2, pw2);
			}
			pstmt.setString(3, addr);
			pstmt.setString(4, phone);
			pstmt.setString(5, qestion);
			pstmt.setString(6, answer);
			pstmt.setString(7, request.getParameter("id"));

			request.setAttribute("idd", request.getParameter("id"));
			request.setAttribute("pww", pw2);
			if (pstmt.executeUpdate() == 1) {
				System.out.println("���� ����");
			} else {
				System.out.println("���� ����");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}

	}

	public static void updateAccountBook(HttpServletRequest request) {

		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("accountInfo");

		int money = Integer.parseInt(request.getParameter("pay"));
		String where = request.getParameter("where");

		System.out.println(money);
		System.out.println(where);

		// �� ���� ���� ��������
		String spend = a.getSpend();
		String pay = a.getPay();

		int pay2 = Integer.parseInt(pay);

//		System.out.println(spend);
//		System.out.println(pay);

		String[] spend2 = spend.split(" ");

		int[] spend3 = Arrays.stream(spend2).mapToInt(Integer::parseInt).toArray();

		if (where.equals("1")) {
			spend3[0] += money;
		} else if (where.equals("2")) {
			spend3[1] += money;
		} else if (where.equals("3")) {
			spend3[2] += money;
		} else {
			spend3[3] += money;
		}

		// �� �����ϱ�
		for (int i = 0; i < spend3.length; i++) {
			pay2 += spend3[i];
		}

		pay = Integer.toString(pay2);
		a.setPay(pay);

		spend = Arrays.toString(spend3).replaceAll("[^0-9 ]", "");
		a.setSpend(spend);
		System.out.println(spend);

		// DB�� ���Խ�Ű��
		Connection con = null;
		PreparedStatement pstmt = null;

		String sql = "update account1 set a_spend=?, a_pay=? where a_id=?";

		try {

			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, spend);
			pstmt.setString(2, pay);
			pstmt.setString(3, a.getId());

			if (pstmt.executeUpdate() == 1) {
				System.out.println("���� ����!");
			} else {
				System.out.println("���� ����!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}

	}

	public static void setSpend(HttpServletRequest request) {

		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("accountInfo");

		String spend = a.getSpend();
		String[] spend2 = spend.split(" ");

		int[] spend3 = Arrays.stream(spend2).mapToInt(Integer::parseInt).toArray();

		request.setAttribute("food", spend3[0]);
		request.setAttribute("cafe", spend3[1]);
		request.setAttribute("shopping", spend3[2]);
		request.setAttribute("beauty", spend3[3]);
	}

	public static void resetAccountBook(HttpServletRequest request) {

		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("accountInfo");

		Connection con = null;
		PreparedStatement pstmt = null;

		String sql = "update account1 set a_pw=?, a_spend=?, a_pay=? where a_id=?";

		try {

			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, a.getPw());
			pstmt.setString(2, "0 0 0 0 ");
			pstmt.setString(3, "0");
			pstmt.setString(4, a.getId());

			request.setAttribute("idd", a.getId());
			request.setAttribute("pww", a.getPw());

			request.setAttribute("food", 0);
			request.setAttribute("cafe", 0);
			request.setAttribute("shopping", 0);
			request.setAttribute("beauty", 0);

			if (pstmt.executeUpdate() == 1) {
				System.out.println("���� ����!");
			} else {
				System.out.println("���� ����!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}

	public static void findID(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "select * from ACCOUNT1 where a_name=? and a_birth=? and a_qestion=? and a_answer=?";

		ResultSet rs = null;
		try {
			request.setCharacterEncoding("UTF-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			String name = request.getParameter("name");
			String birth = request.getParameter("birth");
			String qestion = request.getParameter("qestion");
			String answer = request.getParameter("answer");

			System.out.println(name);
			System.out.println(birth);
			System.out.println(qestion);
			System.out.println(answer);

			pstmt.setString(1, name);
			pstmt.setString(2, birth);
			pstmt.setString(3, qestion);
			pstmt.setString(4, answer);

			rs = pstmt.executeQuery();

			Account find = null;
			
			if (rs.next()) {

				find = new Account();
				find.setId(rs.getString("a_id"));
				find.setPw(rs.getString("a_pw"));
				find.setName(rs.getString("a_name"));
				find.setAddr(rs.getString("a_addr"));
				find.setPhone(rs.getString("a_phone"));
				find.setBirth(rs.getString("a_birth"));
				find.setSpend(rs.getString("a_spend"));
				find.setPay(rs.getString("a_pay"));
				find.setQestion(rs.getString("a_qestion"));
				find.setAnswer(rs.getString("a_answer"));

				request.setAttribute("find", find);
				System.out.println("ã�� ����");
			} else {
				System.out.println("ã�� ����");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}

	}

	public static void findPW(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "select * from ACCOUNT1 where a_id=? and a_qestion=? and a_answer=?";

		ResultSet rs = null;
		try {
			request.setCharacterEncoding("UTF-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			String id = request.getParameter("id");
			String qestion = request.getParameter("qestion");
			String answer = request.getParameter("answer");

			System.out.println(id);
			System.out.println(qestion);
			System.out.println(answer);

			pstmt.setString(1, id);
			pstmt.setString(2, qestion);
			pstmt.setString(3, answer);
			
			rs = pstmt.executeQuery();

			if (rs.next()) {

				Account find = new Account();
				find.setId(rs.getString("a_id"));
				find.setPw(rs.getString("a_pw"));
				find.setName(rs.getString("a_name"));
				find.setAddr(rs.getString("a_addr"));
				find.setPhone(rs.getString("a_phone"));
				find.setBirth(rs.getString("a_birth"));
				find.setSpend(rs.getString("a_spend"));
				find.setPay(rs.getString("a_pay"));
				find.setQestion(rs.getString("a_qestion"));
				find.setAnswer(rs.getString("a_answer"));

				request.setAttribute("find", find);
				System.out.println("ã�� ����");
			} else {
				System.out.println("ã�� ����");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}

	}
}
