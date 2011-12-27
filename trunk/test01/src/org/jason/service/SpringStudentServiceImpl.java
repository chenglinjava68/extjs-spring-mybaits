package org.jason.service;

import java.util.List;

import javax.annotation.Resource;

import org.jason.dao.SpringStudentDAO;
import org.jason.model.Student;
import org.springframework.stereotype.Service;

@Service("studentService")
public class SpringStudentServiceImpl implements SpringStudentService {

	private SpringStudentDAO springStudentDAO;

	@Resource(name = "studentDao")
	public void setSpringStudentDAO(SpringStudentDAO springStudentDAO) {
		this.springStudentDAO = springStudentDAO;
	}

	public void addStudent(Student student) {
		springStudentDAO.addStudent(student);
	}

	public List<Student> findAll() {

		return springStudentDAO.getAll();
	}

}
