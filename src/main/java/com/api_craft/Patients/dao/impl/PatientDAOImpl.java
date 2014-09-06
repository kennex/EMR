package com.api_craft.Patients.dao.impl;

import com.api_craft.Patients.dao.PatientDAO;
import com.api_craft.Patients.model.Patient;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

/**
 * Created by benjamin on 9/6/14.
 */
public class PatientDAOImpl  extends HibernateDaoSupport
		implements PatientDAO{

	//add the customer
	public void addPatient(Patient patient){
		getHibernateTemplate().save(patient);
	}

	//return all the customers in list
	public List<Patient> listPatient(){
		return (List<Patient>) getHibernateTemplate().find("from Patient");
	}
}
