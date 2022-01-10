package com.soldesk.semi.RM;

public class Restaurant {

	private String m_name;
	private int no; 
	private String name;
	private String place;
	private String img;
	
	public Restaurant() {}

	public Restaurant(String m_name, int no, String name, String place, String img) {
		super();
		this.m_name = m_name;
		this.no = no;
		this.name = name;
		this.place = place;
		this.img = img;
	}
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
}
