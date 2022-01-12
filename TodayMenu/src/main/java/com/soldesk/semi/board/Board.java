package com.soldesk.semi.board;

import java.sql.Date;

public class Board {

	private int no;
	private String title;
	private String id;
	private Date date;
	private String content;

	public Board() {}

	public Board(int no, String title, String id, Date date, String content) {
		super();
		this.no = no;
		this.title = title;
		this.id = id;
		this.date = date;
		this.content = content;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
