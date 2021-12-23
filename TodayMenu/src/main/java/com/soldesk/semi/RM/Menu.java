package com.soldesk.semi.RM;

public class Menu {
	
	private int no;
	private int category;
	private String name;
	private String img;
	
	public Menu() {}

	public Menu(int no, int category, String name, String img) {
		super();
		this.no = no;
		this.category = category;
		this.name = name;
		this.img = img;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}	
}
