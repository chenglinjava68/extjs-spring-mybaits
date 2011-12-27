package org.jason.dto;

import java.io.Serializable;

public class TreeDTO implements Serializable {

	private static final long serialVersionUID = 4963887284278025707L;
	private String id;
	private String text;
	private boolean leaf = true;

	public String getId() {
		return id;
	}

	public TreeDTO(String id, String text) {
		super();
		this.id = id;
		this.text = text;
	}

	public TreeDTO() {
		super();
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public boolean isLeaf() {
		return leaf;
	}

	public void setLeaf(boolean leaf) {
		this.leaf = true;
	}

	public TreeDTO(String id, String text, boolean leaf) {
		super();
		this.id = id;
		this.text = text;
		this.leaf = leaf;
	}

}
