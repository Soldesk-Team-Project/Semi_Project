package com.soldesk.semi.RM;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import com.soldesk.semi.hc.DBManager;

public class randomDAO {

	public static void randomMenu(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from menu1 where m_no=?";
		
		try {
			
			Random rNo = new Random(); 
			int rNo1 = rNo.nextInt(77) + 1;
			
			String rNo2 = Integer.toString(rNo1); 
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, rNo2);
			
			rs = pstmt.executeQuery();
			
			Menu m = null;
			
			if(rs.next()) {
				m = new Menu();
				
				m.setNo(rs.getInt("m_no"));
				m.setCategory(rs.getInt("m_category"));
				m.setName(rs.getString("m_name"));
				m.setImg(rs.getString("m_img"));
				
				request.setAttribute("menu", m);
				
			} else {
				System.out.println("에러발생");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

	public static void randomMenuBasic(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from menu1 where m_no=?";
		
		try {
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, "999");
			
			rs = pstmt.executeQuery();
			
			Menu m = null;
			
			if(rs.next()) {
				m = new Menu();
				
				m.setNo(rs.getInt("m_no"));
				m.setCategory(rs.getInt("m_category"));
				m.setName(rs.getString("m_name"));
				m.setImg(rs.getString("m_img"));
				
				request.setAttribute("menu", m);
				
			} else {
				System.out.println("에러발생");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

}
