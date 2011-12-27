package org.jason.dao;

import org.jason.model.Student;

public interface StudentMapper {
	Student selectOneStudent(int sid);
}
