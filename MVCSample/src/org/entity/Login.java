package org.entity;

// 封装数据的 JavaBean,对应数据库中的一张表;

public class Login {
	private String name;
	private String password;
	
	// 无参的构造方法
	public Login() {

	}
	// 带参的构造方法
	public Login(String name, String password) {
		
		this.name = name;
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
