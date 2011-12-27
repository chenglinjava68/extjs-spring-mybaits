package org.jason.service;

import org.jason.dao.StudentMapper;
import org.jason.model.Student;

public class StudentServiceImpl implements IStudentService {

	private StudentMapper studentMapper;

	public Student getOne(int sid) {
		return studentMapper.selectOneStudent(sid);
	}

}
