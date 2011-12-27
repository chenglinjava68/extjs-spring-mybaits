package org.jason.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jason.model.UserInfo;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class PathInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		String rootPath = request.getServletPath();
		// System.out.println(rootPath);
		HttpSession session = request.getSession();
		UserInfo user = (UserInfo) session.getAttribute("user");

		if (rootPath.contains("logon") || rootPath.contains("ext")
				|| rootPath.contains("css") || rootPath.contains("js")
				|| rootPath.contains("image")) {
			return true;
		} else {
			if (user == null) {
				request.getRequestDispatcher("logonPage.action").forward(
						request, response);
				return false;
			} else {
				System.out.println(user.getUserName() + "===========");
				return true;
			}

		}

	}

}
