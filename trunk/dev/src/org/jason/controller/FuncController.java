package org.jason.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.jason.dto.TreeDTO;
import org.jason.service.IMenuService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Scope("prototype")
public class FuncController {
	private IMenuService menuService;

	public IMenuService getMenuService() {
		return menuService;
	}

	@Resource
	public void setMenuService(IMenuService menuService) {
		this.menuService = menuService;
	}

	@RequestMapping(value = "/usefulProcess.action")
	public void getUser(HttpServletResponse response) {
		List<TreeDTO> menus = menuService.findAll();
		PrintWriter out;
		try {
			out = response.getWriter();
			StringBuffer sb = new StringBuffer();
			sb.append("[");
			for (TreeDTO tree : menus) {
				// {"id":"boundaryEvent","text":"boundaryEvent","leaf":true}
				String node = "";
				if (tree != menus.get(menus.size() - 1)) {
					node = "{'id':'" + tree.getId() + "','text':'"
							+ tree.getText() + "','leaf':" + tree.isLeaf()
							+ "},";
				} else {
					node = "{'id':'" + tree.getId() + "','text':'"
							+ tree.getText() + "','leaf':" + tree.isLeaf()
							+ "}";
				}
				sb.append(node);
			}
			sb.append("]");
			out.println(sb.toString());
			out.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
