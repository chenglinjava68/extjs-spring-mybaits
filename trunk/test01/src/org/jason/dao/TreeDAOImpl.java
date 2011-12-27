package org.jason.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.jason.dto.TreeDTO;
import org.springframework.stereotype.Repository;

@Repository("treeDao")
public class TreeDAOImpl implements TreeDAO {
	private SqlSession sqlSession;

	@Resource
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public List<TreeDTO> getAll() {
		return sqlSession
				.selectList("org.jason.mapper.TreeMapper.selectTree");
	}

}
