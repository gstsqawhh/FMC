package nju.software.controller.mobile;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import nju.software.dataobject.Account;
import nju.software.dataobject.TreeNode;
import nju.software.service.AccountService;
import nju.software.service.SystemService;
import nju.software.util.Constants;
import nju.software.util.JSONUtil;
import nju.software.util.SessionUtil;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MainMobileController {
	@Autowired
	private AccountService accountService;
	@Autowired
	private SystemService systemService;
	@Autowired
	private JSONUtil jsonUtil;
	
	private static Logger logger = Logger.getLogger(MainMobileController.class);

	@RequestMapping(value = "mobile_login.do")
	public String login(HttpServletRequest request,
			HttpServletResponse response, ModelMap model) {
		HttpSession session = request.getSession();
		Account cur_user = (Account) session.getAttribute("cur_user");
		 
		if(cur_user != null) {
			return "redirect:mobile_default.do";
		} else {
			String user_agent = request.getHeader("user-agent").toLowerCase();
			
			if(user_agent.contains("windows phone") || user_agent.contains("android") || user_agent.contains("iphone")) {
				return "mobile_login";
			} else {
				return "mobile_login";
			}
			
		}
	}
	
	@RequestMapping(value = "mobile_logout.do", method= RequestMethod.GET)
	//@Transactional(rollbackFor = Exception.class)
	public String logout(HttpServletRequest request,
			HttpServletResponse response, ModelMap model) {
		
		HttpSession session = request.getSession();
		session.setAttribute("cur_user", null);
		session.removeAttribute("treeNodeList");
		
		return "redirect:/mobile_login.do";

	}
	
	
	@RequestMapping(value = "mobile_doLogin.do", method= RequestMethod.POST)
	public void doLogin(HttpServletRequest request,
			HttpServletResponse response, ModelMap model) {
		String user_name = request.getParameter("user_name");
		String user_password = request.getParameter("user_password");
		HttpSession session = request.getSession();
		Account account = accountService.vertifyAccount(user_name, user_password);		
		if (account != null) {
			session.setAttribute(Constants.PARAM_CUR_ACCOUNT, account);
			model.put(Constants.JSON_ACCOUNT, account);
			model.put(Constants.JSON_IS_SUCCESS, true);
			model.put(Constants.PARAM_SESSION_ID, session.getId());
		} else {
			model.addAttribute(Constants.JSON_IS_SUCCESS, false);
		}
		jsonUtil.sendJson(response, model);
	}
	
	@RequestMapping(value = "mobile_default.do", method= RequestMethod.GET)
	public void getDefaultPage(HttpServletRequest request,
			HttpServletResponse response, ModelMap model) {
		/**
		 * 权限
		 */
		/*
		 */
		String jsessionId = request.getParameter(Constants.PARAM_SESSION_ID);
		HttpSession session = SessionUtil.getSession(request, jsessionId);
		Account account = (Account) session.getAttribute("cur_user");
		List<TreeNode> list= systemService.findLeftMenuByLogin(account);
		session.setAttribute("treeNodeList", list);
		Map<String, Object> map = new HashMap<>();
		map.put(Constants.JSON_ACCOUNT, account);
		jsonUtil.sendJson(response, map);
	}
}
