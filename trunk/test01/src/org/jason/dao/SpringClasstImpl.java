package org.jason.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.jason.model.Class;

import org.springframework.stereotype.Repository;

@Repository("classDao")
public class SpringClasstImpl implements SpringClassDAO {
	private SqlSession sqlSession;

	@Resource
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public void addClass(Class clazz) {
		sqlSession.insert("org.jason.mapper.ClassMapper.insert", clazz);
	}

	public List<Class> getAll() {
		return null;
	}

}
