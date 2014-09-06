package com.api_craft.Patients.action;

import com.api_craft.Patients.bo.PatientBo;
import com.api_craft.Patients.model.Patient;
import com.opensymphony.xwork2.ModelDriven;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by benjamin on 9/6/14.
 */
public class PatientAction implements ModelDriven {

	Patient patient = new Patient();
	List<Patient> patientList = new ArrayList<Patient>();

	PatientBo patientBo;
	//DI via Spring
	public void setPatientBo(PatientBo customerBo) {
		this.patientBo = patientBo;
	}

	public Object getModel() {
		return patient;
	}

	public List<Patient> getPatientList() {
		return patientList;
	}

	public void setPatientList(List<Patient> customerList) {
		this.patientList = patientList;
	}

	//save customer
	public String addPatient() throws Exception{

		//save it
		patient.setCreatedDate(new Date());
		patientBo.addPatient(patient);

		//reload the customer list
		patientList = null;
		patientList= patientBo.listPatient();

		return "success";

	}

	//list all customers
	public String listPatient() throws Exception{

		patientList = patientBo.listPatient();

		return "success";

	}

}
