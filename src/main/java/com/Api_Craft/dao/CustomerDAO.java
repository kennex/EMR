package com.Api_Craft.dao;

import com.Api_Craft.model.Customer;
import org.springframework.orm.hibernate3.HibernateTemplate;

import java.util.List;

/**
 * Created by benjamin on 9/10/14.
 */
public class CustomerDAO {
		private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public void saveOrUpdate(Customer customer) {

		hibernateTemplate.save(customer);
	}

	public List<Customer> fetchAllCustomer() {
		return hibernateTemplate.loadAll(Customer.class);
	}
}
