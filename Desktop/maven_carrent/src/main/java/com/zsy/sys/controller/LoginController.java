package com.zsy.sys.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zsy.sys.constast.SysConstast;
import com.zsy.sys.domain.User;
import com.zsy.sys.service.LogInfoService;
import com.zsy.sys.service.UserService;
import com.zsy.sys.utils.WebUtils;
import com.zsy.sys.vo.LogInfoVo;
import com.zsy.sys.vo.UserVo;

@Controller
@RequestMapping("login")
public class LoginController {
	@Autowired
	private UserService userService;
	@Autowired
	private LogInfoService logInfoService;
	
	@RequestMapping("toLogin")
	public String toLogin() {
		return "system/main/login";
	}
	@RequestMapping("login")
	public String login(UserVo userVo,Model model) {
		User user = userService.login(userVo);
		if (null!=user) {
			WebUtils.getHttpSession().setAttribute("user", user);
			//登陆时添加日志到sys_log_login
			LogInfoVo logInfoVo = new LogInfoVo();
			logInfoVo.setLogintime(new Date());
			logInfoVo.setLoginname(user.getRealname()+"-"+user.getLoginname());
			logInfoVo.setLoginip(WebUtils.getHttpServletRequest().getRemoteAddr());
			logInfoService.addLogInfo(logInfoVo);
			return "system/main/index";
		}else {
			model.addAttribute("error",SysConstast.USER_LOGIN_ERROR_MSG );
			return "system/main/login";
		}
	}
}
