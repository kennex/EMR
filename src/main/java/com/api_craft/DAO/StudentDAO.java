package com.api_craft.DAO;

import com.api_craft.model.Student;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;

/**
 * Created by benjamin on 9/4/14.
 */
public class StudentDAO {
	@SessionTarget
	Session session;

	@TransactionTarget
	Transaction transaction;

	@SuppressWarnings("unchecked")
	public List<Student> getStudents()
	{
		List<Student> students = new ArrayList<Student>();
		try
		{
			students = session.createQuery("from Student").list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return students;
	}

	public void addStudent(Student student)
	{
		session.save(student);
	}
}
