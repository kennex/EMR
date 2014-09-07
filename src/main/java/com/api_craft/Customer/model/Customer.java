package com.api_craft.Customer.model;

import java.util.Date;

/**
 * Created by benjamin on 9/6/14.
 */
public class Customer implements java.io.Serializable {

	private Long customerId;
	private String name;
	private String address;
	private Date createdDate;

	public Long getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Long customerId) {
		this.customerId = customerId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
}
