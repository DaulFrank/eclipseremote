package org.entity;

// ��װ���ݵ� JavaBean,��Ӧ���ݿ��е�һ�ű�;

public class Login {
	private String name;
	private String password;
	
	// �޲εĹ��췽��
	public Login() {

	}
	// ���εĹ��췽��
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
