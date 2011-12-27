package org.jason.model;

import java.io.Serializable;

public class UserInfo implements Serializable {
	private static final long serialVersionUID = 2855468073684947983L;

	private String userName;

	private String pwd;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public UserInfo(String userName, String pwd) {
		this.userName = userName;
		this.pwd = pwd;
	}

	public UserInfo() {
		super();
	}

}
