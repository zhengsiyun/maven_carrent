package com.zsy.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 跳转到工作台
 * @author 13480
 *
 */
@Controller
@RequestMapping("desk")
public class DeskController {
	
	@RequestMapping("toDeskManager")
	public String toDeskManager() {
		return "system/main/deskManager";
	}
}
