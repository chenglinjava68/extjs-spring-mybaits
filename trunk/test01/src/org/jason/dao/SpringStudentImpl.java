package org.jason.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.jason.model.Student;
import org.springframework.stereotype.Repository;

@Repository("studentDao")
public class SpringStudentImpl implements SpringStudentDAO {
	private SqlSession sqlSession;

	@Resource
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public void addStudent(Student student) {
		sqlSession.insert("org.jason.mapper.StudentMapper.insert", student);
		// throw new RuntimeException();
	}

	public List<Student> getAll() {
		return sqlSession
				.selectList("org.jason.mapper.StudentMapper.selectStudents");
	}

}
