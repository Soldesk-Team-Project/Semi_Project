package com.soldesk.semi.RM;

public class Restaurant {

	private String m_name;
	private String name;
	private String place;
	private String img;
	
	public Restaurant() {}

	public Restaurant(String m_name, String name, String place, String img) {
		super();
		this.m_name = m_name;
		this.name = name;
		this.place = place;
		this.img = img;
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
