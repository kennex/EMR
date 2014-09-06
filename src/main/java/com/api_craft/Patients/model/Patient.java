package com.api_craft.Patients.model;

import java.util.Date;

/**
 * Created by benjamin on 9/6/14.
 */
public class Patient implements java.io.Serializable {

	public Long getPatientId() {
		return patientId;
	}

	public void setPatientId(Long patientId) {
		this.patientId = patientId;
	}

	private Long patientId;
	private String name;
	private String address;
	private Date createdDate;

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
