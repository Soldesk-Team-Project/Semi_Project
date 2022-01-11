package com.soldesk.semi.all;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.soldesk.semi.hc.DBManager;

public class allDAO {

	private static final allDAO ADAO = new allDAO();
	
	private allDAO() {};
	
	public static allDAO getAdao() {
		return ADAO;
	}
	
	private ArrayList<AllRestaurant> rests;

	public void paging(int page, HttpServletRequest request) {
		
		// page : 현재 페이지 번호
		request.setAttribute("curPageNo", page);

		int cnt = 18;	// 한 페이지당 보여줄 개수
		// size = 배열 length
		int total = rests.size();	// 전체 데이터 개수
		
		// 총 페이지 수 계산
		int pageCount = (int)Math.ceil((double)total / cnt);
		request.setAttribute("pageCount", pageCount);
		
		// 페이지의 시작 데이터 번호 계산
		int start = total - (cnt * (page - 1));
		
		// 페이지의 끝 데이터 번호 계산
		int end = (page == pageCount) ? -1 : start - (cnt + 1);
		
		ArrayList<AllRestaurant> items = new ArrayList<AllRestaurant>();
		for (int i = start-1; i > end; i--) {
			// movies를 인덱스번호에 맞춰서 가지고 온다
				// movies = 모든 데이터가 들어있는 배열
			items.add(rests.get(i));
		}
		
		// 페이지 번호에 맞는 데이터량을 보내준다.
		request.setAttribute("rests", items);
		
	}
	
	public void getAllRestaurant(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from restaurant1 order by r_name desc";
		
		try {	
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			rests = new ArrayList<AllRestaurant>();
			
			while (rs.next()) {
				rests.add(new AllRestaurant(rs.getInt("r_no"), rs.getString("r_name"), rs.getString("r_place"), rs.getString("r_img"), rs.getDouble("r_lat"), rs.getDouble("r_lng")));

			
			}
			
			request.setAttribute("rests", rests);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

	public void searchRestaurant(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String search = request.getParameter("search");
		System.out.println(search);
		
		String sql = "select * from restaurant1 where r_name like '%'||?||'%' order by r_name desc";
		
		try {	
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, search);
			
			rs = pstmt.executeQuery();
			
			rests = new ArrayList<AllRestaurant>();
			
			while (rs.next()) {
				System.out.println(rs.getInt("r_no"));
				System.out.println(rs.getString("r_name"));
				rests.add(new AllRestaurant(rs.getInt("r_no"), rs.getString("r_name"), rs.getString("r_place"), rs.getString("r_img"), rs.getDouble("r_lat"), rs.getDouble("r_lng")));
			}
			
			request.setAttribute("rests", rests);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
			
		
	}

	public void getTypeMenu(int what, HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		System.out.println(what);
		
		String sql = "select distinct(r_name), r_no, r_place, r_img from con join menu1 on con.c_menu = menu1.m_no join restaurant1 on con.c_restaurant = restaurant1.r_no where menu1.m_category = ? order by r_name desc";
		
		try {	
		
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, what);
			
			rs = pstmt.executeQuery();
			
			rests = new ArrayList<AllRestaurant>();
			
			while (rs.next()) {
				System.out.println(rs.getInt("r_no"));
				System.out.println(rs.getString("r_name"));
				rests.add(new AllRestaurant(rs.getInt("r_no"), rs.getString("r_name"), rs.getString("r_place"), rs.getString("r_img"), rs.getDouble("r_lat"), rs.getDouble("r_lng")));
			}
			
			request.setAttribute("rests", rests);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

	public void getRestaurant(HttpServletRequest request) {

		int no = Integer.parseInt(request.getParameter("no"));
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from restaurant1 where r_no=?";
		
		try {	
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			rs = pstmt.executeQuery();
			
			AllRestaurant rests = new AllRestaurant();
			
			if (rs.next()) {
				rests.setNo(rs.getInt("r_no"));
				rests.setName(rs.getString("r_name"));
				rests.setPlace(rs.getString("r_place"));
				rests.setImg(rs.getString("r_img"));
				rests.setLat(rs.getDouble("r_lat"));
				rests.setLng(rs.getDouble("r_lng"));
			}
			
			request.setAttribute("rests", rests);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}
	
}
