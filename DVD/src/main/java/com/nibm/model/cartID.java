package com.nibm.model;

import java.io.Serializable;

public class cartID implements Serializable{

	private int uid;
	private int prod_id;
	
	public cartID() {
		super();
		// TODO Auto-generated constructor stub
	}

	public cartID(int uid, int prod_id) {
		
		this.uid = uid;
		this.prod_id = prod_id;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}
	
	
}
