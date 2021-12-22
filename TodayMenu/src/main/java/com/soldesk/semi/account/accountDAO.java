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
				System.out.println("Ż�� ����!");
				request.setAttribute("r", "Ż�� ����!");
			} else {
				System.out.println("Ż�� ����!");
				request.setAttribute("r", "Ż�� ����!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB ���� ����");
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
			if(pstmt.executeUpdate() == 1) {
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

}
