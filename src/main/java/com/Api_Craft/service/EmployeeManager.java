package com.Api_Craft.service;

import com.Api_Craft.entity.EmployeeEntity;

import java.util.List;

public interface EmployeeManager {
	//This method will be called when a employee object is added
    public void addEmployee(EmployeeEntity employee);
    //This method return list of employees in database
    public List<EmployeeEntity> getAllEmployees();
    //Deletes a employee by it's id
    public void deleteEmployee(Integer employeeId);
}
