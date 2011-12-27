package org.jason.test;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.jason.dto.StudentDTO;

public class MyBatisMainApp {
	public static void main(String[] args) {
		String resource = "mybatis-config.xml";
		Reader reader;
		try {
			reader = Resources.getResourceAsReader(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder()
					.build(reader);
			SqlSession session = sqlSessionFactory.openSession();
			try {
				// System.out.println(System.currentTimeMillis());
				// Student student = (Student) session.selectOne(
				// "org.jason.dao.StudentMapper.selectOneStudent", 101);
				// System.out.println(student.getSid() + "----"
				// + student.getSname());
				// System.out.println(System.currentTimeMillis());
				//
				// Student student1 = (Student) session.selectOne(
				// "org.jason.dao.StudentMapper.selectOneStudent", 101);
				// System.out.println(student1.getSid() + "----"
				// + student1.getSname());
				// System.out.println(System.currentTimeMillis());
				// // StudentMapper studentMapper = session
				// // .getMapper(StudentMapper.class);
				// // Student student = studentMapper.selectOneStudent(101);
				// List<Student> students = new ArrayList<Student>();
				// students = (List<Student>) session
				// .selectList("org.jason.dao.StudentMapper.selectStudents");
				// System.out.println(students.size());
				// List<StudentDTO> students = new ArrayList<StudentDTO>();
				// students = session.selectList(
				// "org.jason.mapper.ClassMapper.selectStudentsByCname",
				// "IE071");
				// for (StudentDTO student : students) {
				// System.out.println(student.getId() + "---"
				// + student.getSname() + "---"
				// + student.getClassName());
				// }
				org.jason.model.Class clazz = new org.jason.model.Class(10,
						"Soft072");
				session.update("org.jason.mapper.ClassMapper.update", clazz);
				session.commit();
			} finally {
				session.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
