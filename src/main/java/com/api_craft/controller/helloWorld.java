package com.api_craft.controller;

/**
 * Created by benjamin on 8/17/14.
 */
public class helloWorld {

	public String execute() throws Exception {
		return "success";
	}

	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
