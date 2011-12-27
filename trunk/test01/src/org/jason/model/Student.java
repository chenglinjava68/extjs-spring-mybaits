package org.jason.model;

import java.io.Serializable;

public class Student implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7225644920488557355L;
	private int sid;
	private String sname;
	private int classId;

	public Student(String sname, int classId) {
		super();
		this.sname = sname;
		this.classId = classId;
	}

	public Student(int sid, String sname, int classId) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.classId = classId;
	}

	public int getClassId() {
		return classId;
	}

	public void setClassId(int classId) {
		this.classId = classId;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public Student(int sid, String sname) {
		this.sid = sid;
		this.sname = sname;
	}

	public Student() {
	}

}
