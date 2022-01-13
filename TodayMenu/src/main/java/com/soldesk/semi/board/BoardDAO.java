package com.soldesk.semi.board;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.soldesk.semi.hc.DBManager;

public class BoardDAO {
	
	private ArrayList<Board> boards;
	// 밖에서 기본생성자 접근 못하게 함
	private static final BoardDAO BDAO = new BoardDAO();
	private BoardDAO() {};

	public static BoardDAO getBdao() {
		return BDAO;
	}


	public void writeBoard(HttpServletRequest request) {

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

	public void getAllBoard(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from board order by b_no";
		
		try {
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			boards = new ArrayList<Board>();
			
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

	public void getBoard(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from board where b_no = ?";
		
		try {
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, Integer.parseInt(request.getParameter("no")));
			
			rs = pstmt.executeQuery();
			
			Board b = null;
			
			if (rs.next()) {
				b = new Board();
				b.setNo(rs.getInt("b_no"));
				b.setTitle(rs.getString("b_title"));
				b.setDate(rs.getDate("b_date"));
				b.setId(rs.getString("b_id"));
				b.setContent(rs.getString("b_content"));
			}
			
			request.setAttribute("board", b);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	public void updateBoard(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "update board set b_title = ?, b_content = ? where b_no = ?";
		
		try {
			request.setCharacterEncoding("utf-8");
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
		
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			int no = Integer.parseInt(request.getParameter("no"));
			
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setInt(3, no);
			// 셋팅 완료.
			
			if (pstmt.executeUpdate() == 1) {
				request.setAttribute("r", "수정 성공!!");
			} else {
				request.setAttribute("r", "수정 실패!!");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}

	public void deleteBoard(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "delete board where b_no = ?";
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
		
			int no = Integer.parseInt(request.getParameter("no"));
			pstmt.setInt(1, no);
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("삭제 성공!");
			} else {
				System.out.println("삭제 실패!");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
	}

	public void boardPaging(int page, HttpServletRequest request) {

		// page : 현재 페이지 번호
		request.setAttribute("curPageNo", page);

		int cnt = 8;	// 한 페이지당 보여줄 개수
		// size = 배열 length
		int total = boards.size();	// 전체 데이터 개수
		
		// 총 페이지 수 계산
		int pageCount = (int)Math.ceil((double)total / cnt);
		request.setAttribute("pageCount", pageCount);
		
		// 페이지의 시작 데이터 번호 계산
		int start = total - (cnt * (page - 1));
		
		// 페이지의 끝 데이터 번호 계산
		int end = (page == pageCount) ? -1 : start - (cnt + 1);
		
		ArrayList<Board> items = new ArrayList<Board>();
		for (int i = start-1; i > end; i--) {
			items.add(boards.get(i));
		}
		
		// 페이지 번호에 맞는 데이터량을 보내준다.
		request.setAttribute("boards", items);
		
	}

	public void serachBoard(HttpServletRequest request) throws UnsupportedEncodingException {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		request.setCharacterEncoding("UTF-8");
		
		String type = request.getParameter("searchType");
		String content = request.getParameter("searchContent");
		System.out.println(type);
		System.out.println(content);

		System.out.println("type = " + type);
		
		String sql = "";
		
		if (!content.equals(" ") && content != null) {
			if (type.equals("1")) {
				sql = "select * from board where b_title like '%'||?||'%' order by b_no";
			} else if (type.equals("2")) {
				sql = "select * from board where b_id like '%'||?||'%' order by b_no";
			}
		} else {
			sql = "select * from board order by b_no";
		}
		
		try {
			
			con = DBManager.connect();
			
			if (!content.equals(" ") && content != null) {
				pstmt= con.prepareStatement(sql);
			
				pstmt.setString(1, content);
			} else {
				pstmt= con.prepareStatement(sql);
			}
			
			rs = pstmt.executeQuery();
			
			boards = new ArrayList<Board>();				
			Board b = null;
			
			while (rs.next()) {
				System.out.println(rs.getString("b_title"));
				
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
