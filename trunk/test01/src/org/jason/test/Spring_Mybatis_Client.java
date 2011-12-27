package org.jason.test;

import java.util.List;

import org.jason.dto.TreeDTO;
import org.jason.service.IMenuService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Spring_Mybatis_Client {
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				new String[] { "applicationContext.xml", "spring-servlet.xml" });
		IMenuService m = (IMenuService) context.getBean("menuService");
		List<TreeDTO> menus = m.findAll();

		StringBuffer sb = new StringBuffer();
		sb.append("[");
		for (TreeDTO tree : menus) {
			// {"id":"boundaryEvent","text":"boundaryEvent","leaf":true}
			String node = "";
			if (tree != menus.get(menus.size() - 1)) {
				node = "{'id':'" + tree.getId() + "','text':'" + tree.getText()
						+ "','leaf':'" + tree.isLeaf() + "'},";
			} else {
				node = "{'id':'" + tree.getId() + "','text':'" + tree.getText()
						+ "','leaf':'" + tree.isLeaf() + "'}";
			}
			sb.append(node);
		}
		sb.append("]");
		System.out.println(sb.toString());
	}
}
