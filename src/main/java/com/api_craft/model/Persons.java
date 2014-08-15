package com.api_craft.model;

import java.io.Serializable;

/**
 * Created by benjamin on 8/15/14.
 */
public class Persons implements Serializable {
	private static final long serialVersionUID = 1L;
	public Integer personID;


	public Persons () {

	}


	public Integer getPersonID() {
		return personID;
	}

	public void setPersonID(Integer personID) {
		this.personID = personID;
	}

}
