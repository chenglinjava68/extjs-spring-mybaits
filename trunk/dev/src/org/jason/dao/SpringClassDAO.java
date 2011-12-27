package org.jason.dao;

import java.util.List;

import org.jason.model.Class;

public interface SpringClassDAO {
	void addClass(Class clazz);

	List<Class> getAll();
}
