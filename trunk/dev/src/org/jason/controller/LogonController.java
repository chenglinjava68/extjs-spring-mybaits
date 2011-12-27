package org.jason.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jason.model.UserInfo;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@Scope("prototype")
@SessionAttributes("user")
public class LogonController {

	public boolean success;

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	@RequestMapping(value = "/logonPage.action")
	public String index() {
		return "logon";
	}

	@RequestMapping(value = "/toMainPage.action")
	public String toMainPage() {
		return "main";
	}

	@RequestMapping(value = "/logout.action")
	public String logout(HttpServletRequest request, Model model) {
		model.addAttribute("user", null);
		HttpSession session = request.getSession(false);
		session.invalidate();
		return "redirect:/logonPage.action";
	}

	@RequestMapping(value = "/logon.action", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> logon(UserInfo user, Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		if ((user.getUserName().equals("Jason") && user.getPwd().equals("qqq"))
				|| (user.getUserName().equals("Lily") && user.getPwd().equals(
						"123"))) {
			model.addAttribute("user", user);
			success = true;
			map.put("msg", "登陆成功!");
		} else {
			success = false;
			map.put("msg", "用户名或密码失败!");
		}
		map.put("success", success);
		return map;
	}

}
