package org.jason.model;

import java.io.Serializable;

public class Class implements Serializable {

	private static final long serialVersionUID = 3141157823288310253L;
	private int classId;
	private String className;

	public int getClassId() {
		return classId;
	}

	public void setClassId(int classId) {
		this.classId = classId;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public Class(int classId, String className) {
		super();
		this.classId = classId;
		this.className = className;
	}

	public Class(String className) {
		super();
		this.className = className;
	}

}
