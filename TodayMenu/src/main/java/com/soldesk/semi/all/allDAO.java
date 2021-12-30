package com.soldesk.semi.all;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.soldesk.semi.hc.DBManager;

public class allDAO {

	public static void getAllRestaurant(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from restaurant1 order by r_name";
		
		try {	
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<AllRestaurant> rests = new ArrayList<AllRestaurant>();
			
			while (rs.next()) {
				rests.add(new AllRestaurant(rs.getInt("r_no"), rs.getString("r_name"), rs.getString("r_place"), rs.getString("r_img")));
			
			}
			
			request.setAttribute("rests", rests);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

	public static void searchRestaurant(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String search = request.getParameter("search");
		System.out.println(search);
		
		String sql = "select * from restaurant1 where r_name like '%'||?||'%' order by r_name";
		
		try {	
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, search);
			
			rs = pstmt.executeQuery();
			
			ArrayList<AllRestaurant> rests = new ArrayList<AllRestaurant>();
			
			while (rs.next()) {
				System.out.println(rs.getInt("r_no"));
				System.out.println(rs.getString("r_name"));
				rests.add(new AllRestaurant(rs.getInt("r_no"), rs.getString("r_name"), rs.getString("r_place"), rs.getString("r_img")));
			}
			
			request.setAttribute("rests", rests);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
			
		
	}
	
}
