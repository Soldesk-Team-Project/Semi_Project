package com.soldesk.semi.account;

public class Account {
	private String id;
	private String pw;
	private String name;
	private String birth;
	private String addr;
	private String phone;
	private String spend;
	private String pay;
	private String qestion;
	private String answer;
	
	public Account() {}
	
	public Account(String id, String pw, String name, String birth, String addr, String phone, String spend, String pay,
			String qestion, String answer) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.birth = birth;
		this.addr = addr;
		this.phone = phone;
		this.spend = spend;
		this.pay = pay;
		this.qestion = qestion;
		this.answer = answer;
	}
	
	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSpend() {
		return spend;
	}

	public void setSpend(String spend) {
		this.spend = spend;
	}

	public String getQestion() {
		return qestion;
	}

	public void setQestion(String qestion) {
		this.qestion = qestion;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
}
