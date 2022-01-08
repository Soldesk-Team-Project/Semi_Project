package com.soldesk.semi.RM;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
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
			int rNo1 = rNo.nextInt(63) + 1;
			
			String rNo2 = Integer.toString(rNo1); 
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, rNo2);
			
			request.setAttribute("randomValue", rNo2);
			
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

	public static void randomDessert(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from menu1 where m_no=?";
		
		try {
			
			int min = 64;
			int max = 78;
			
			Random rNo = new Random(); 
			int rNo1 = min + rNo.nextInt((max - min) + 1);
			String rNo2 = Integer.toString(rNo1); 
			System.out.println(rNo2);
			
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
				
				request.setAttribute("dessert", m);
				
			} else {
				System.out.println("에러발생");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	public static void randomRestaurant(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select m_name, r_name, r_place, r_img from con join menu1 on con.c_menu = menu1.m_no join restaurant1 on con.c_restaurant = RESTAURANT1.r_no where menu1.m_no = ?";
		String rNo = (String)request.getAttribute("randomValue");
		
		try {

			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, rNo);
			
			rs = pstmt.executeQuery();
			
			ArrayList<Restaurant> r = new ArrayList<Restaurant>();
			
			while (rs.next()) {
				r.add(new Restaurant(rs.getString("m_name"), rs.getInt("r_no"), rs.getString("r_name"), rs.getString("r_place"), rs.getString("r_img")));
			}
			
			Collections.shuffle(r);
			
			request.setAttribute("rest", r);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

}
