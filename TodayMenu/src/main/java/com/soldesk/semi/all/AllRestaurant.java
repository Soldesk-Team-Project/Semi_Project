package com.soldesk.semi.all;

public class AllRestaurant {

	private int no;
	private String name;
	private String place;
	private String img;
	
	public AllRestaurant() {}

	public AllRestaurant(int no, String name, String place, String img) {
		super();
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
