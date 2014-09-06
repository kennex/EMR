package com.api_craft.Patients.bo.impl;

import com.api_craft.Patients.bo.PatientBo;
import com.api_craft.Patients.dao.PatientDAO;
import com.api_craft.Patients.model.Patient;
import java.util.List;

/**
 * Created by benjamin on 9/6/14.
 */
public class PatientBoImpl implements PatientBo{

	PatientDAO patientDAO;
	//DI via Spring
	public void setPatientDAO(PatientDAO patientDAO) {
		this.patientDAO = patientDAO;
	}

	//call DAO to save customer
	public void addPatient(Patient patient){
		patientDAO.addPatient(patient);
	}

	//call DAO to return customers
	public List<Patient> listPatient(){
		return (List<Patient>) patientDAO.listPatient();
	}
}
