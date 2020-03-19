package com.alliance.controller.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
	@Autowired
	
	@RequestMapping("/admin")
	public ModelAndView adminpage() {
		ModelAndView mv = new ModelAndView("admin/index");
		return mv;
	}

}
