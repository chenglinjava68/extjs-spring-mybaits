package org.jason.service;

import java.util.List;

import javax.annotation.Resource;

import org.jason.dao.TreeDAO;
import org.jason.dto.TreeDTO;
import org.springframework.stereotype.Service;

@Service("menuService")
public class MenuTreeService implements IMenuService {
	private TreeDAO treeDao;

	public TreeDAO getTreeDao() {
		return treeDao;
	}

	@Resource
	public void setTreeDao(TreeDAO treeDao) {
		this.treeDao = treeDao;
	}

	public List<TreeDTO> findAll() {
		return treeDao.getAll();
	}

}
