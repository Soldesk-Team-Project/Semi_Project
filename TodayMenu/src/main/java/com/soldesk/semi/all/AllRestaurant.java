package com.soldesk.semi.all;

public class AllRestaurant {

	private int no;
	private String name;
	private String place;
	private String img;
	private double lat;
	private double lng;
	
	public AllRestaurant() {}
	
	public AllRestaurant(int no, String name, String place, String img, double lat, double lng) {
		super();
		this.no = no;
		this.name = name;
		this.place = place;
		this.img = img;
		this.lat = lat;
		this.lng = lng;
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

	public double getLat() {
		return lat;
	}

	public void setLat(double lat) {
		this.lat = lat;
	}

	public double getLng() {
		return lng;
	}

	public void setLng(double lng) {
		this.lng = lng;
	}


	
}
