package org.jason.dto;

import java.io.Serializable;

public class StudentDTO implements Serializable {
	private static final long serialVersionUID = 6029608045875722559L;
	private int id;
	private String sname;
	private String className;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public StudentDTO(int id, String sname, String className) {
		super();
		this.id = id;
		this.sname = sname;
		this.className = className;
	}

	public StudentDTO() {
		super();
	}

}
