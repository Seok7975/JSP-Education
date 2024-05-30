package com.superman.www;

import java.io.Serializable;

public class MemberDTO implements Serializable{
	private String name;
	private String id;
	public MemberDTO() {
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}