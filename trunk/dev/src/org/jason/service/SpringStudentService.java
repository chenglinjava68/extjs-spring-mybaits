package org.jason.service;

import java.util.List;

import org.jason.model.Student;

public interface SpringStudentService {
	void addStudent(Student student);
	
	List<Student> findAll();
}
