/**
 * Copyright 2013 @ Fazal Code
 * All Rights Reserved to Fazal Code
 */
package com.java.struts.fazalcode;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Tatarao voleti
 * @date   Nov 11, 2013
 */
public class LoginAction extends ActionSupport {
	
	private String username;
	private String password;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "LoginAction [username=" + username + ", password=" + password
				+ "]";
	}
	
	public String execute(){
		if (username.equalsIgnoreCase("user") && password.equalsIgnoreCase("pass")) {
			return "success";
		} else {
			return "failure";
		}
	}
}
