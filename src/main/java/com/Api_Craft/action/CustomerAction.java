package com.Api_Craft.action;

import com.Api_Craft.dao.CustomerDAO;
import com.Api_Craft.model.Customer;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by benjamin on 9/10/14.
 */
public class CustomerAction extends ActionSupport implements ModelDriven<Customer> {
	private Customer customer=new Customer();
	private CustomerDAO customerDAO;
	List<Customer> savedCustomerList = new ArrayList<Customer>();

	public Customer getModel() {
		return customer;
	}

	public String execute() throws Exception {
		customerDAO.saveOrUpdate(customer);
		savedCustomerList=customerDAO.fetchAllCustomer();
		return "successView";
	}
	public List<Customer> getSavedCustomerList() {
		return savedCustomerList;
	}

	public void setSavedCustomerList(List<Customer> savedCustomerList) {
		this.savedCustomerList = savedCustomerList;
	}

	public void setCustomerDAO(CustomerDAO customerDAO) {
		this.customerDAO = customerDAO;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
}
