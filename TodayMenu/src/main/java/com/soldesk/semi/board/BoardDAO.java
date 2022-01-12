package com.soldesk.semi.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.soldesk.semi.hc.DBManager;

public class BoardDAO {

	public static void writeBoard(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			request.setCharacterEncoding("UTF-8");
			
			String sql = "insert into board values(board_seq.nextval, ?, sysdate, ?, ?)";
			String title = request.getParameter("title");
			String id = request.getParameter("id");
			String content = request.getParameter("content");
			
			System.out.println("title : " + title);
			System.out.println("id : " + id);
			System.out.println("content : " + content);
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, title);
			pstmt.setString(2, id);
			pstmt.setString(3, content);
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("등록 성공!");
			} else {
				System.out.println("등록 실패!");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
	}

	public static void getAllBoard(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from board order by b_no";
		
		try {
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<Board> boards = new ArrayList<Board>();
			
			Board b = null;
			
			while (rs.next()) {
				b = new Board();
				b.setNo(rs.getInt("b_no"));
				b.setTitle(rs.getString("b_title"));
				b.setDate(rs.getDate("b_date"));
				b.setId(rs.getString("b_id"));
				b.setContent(rs.getString("b_content"));
				
				boards.add(b);
			}
			
			request.setAttribute("boards", boards);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	
}
