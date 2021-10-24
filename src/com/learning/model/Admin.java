package com.learning.model;

public class Admin {
	private String adminId="123";
	private String adminName="admin";
	private String adminEmail="admin@gmail.com";
	private String adminPassword="adminPass";
	
	public Admin() {};
	
	public Admin(String adminId, String adminName, String adminEmail, String adminPassword) {
		super();
		this.adminId = adminId;
		this.adminName = adminName;
		this.adminEmail = adminEmail;
		this.adminPassword = adminPassword;
	}

	public String getAdminId() {
		return adminId;
	}
	public String getAdminName() {
		return adminName;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public String getAdminPassword() {
		return adminPassword;
	}	
}
