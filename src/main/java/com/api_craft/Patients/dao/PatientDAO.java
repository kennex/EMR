package com.api_craft.Patients.dao;

import com.api_craft.Patients.model.Patient;

import java.util.List;

/**
 * Created by benjamin on 9/6/14.
 */
public interface PatientDAO {
	void addPatient(Patient patient);
	List<?> listPatient();
}
