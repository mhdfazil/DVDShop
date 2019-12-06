package com.nibm.model;

import java.io.Serializable;

public class OrderDetailId implements Serializable {

	private int order_id;
	private int prod_id;
	
	
	
	public OrderDetailId() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderDetailId(int order_id, int prod_id) {
		this.order_id = order_id;
		this.prod_id = prod_id;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}
	
	
}
