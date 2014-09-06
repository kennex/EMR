package com.api_craft.Patients.bo;

import com.api_craft.Patients.model.Patient;

import java.util.List;

/**
 * Created by benjamin on 9/6/14.
 */
public interface PatientBo {
	void addPatient(Patient patient);
	List<Patient> listPatient();
}
