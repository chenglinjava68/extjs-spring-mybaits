package org.jason.dao;

import java.util.List;

import org.jason.model.Student;

public interface SpringStudentDAO {
	void addStudent(Student student);

	List<Student> getAll();
}
