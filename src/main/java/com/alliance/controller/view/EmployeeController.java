package com.alliance.controller.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EmployeeController {

	
	//Onboarding 
		
		@RequestMapping(value ="/hrprofiler", method = RequestMethod.GET)
		public String onBoard() {
			return "onboarding/index";
		}
		
		@RequestMapping(value = "/onboarding", method = RequestMethod.GET)
		public String SetUpBoard(){
			return "onboarding/onboarding";
		}
		
	
	//Employee Information Change
		
		@RequestMapping(value ="/emp-update", method= RequestMethod.GET)
		public String Update() {
			return "update/update";
		}
		
	//Offboarding
		
		@RequestMapping(value = "/offboarding", method = RequestMethod.GET)
		public String OffBoarding() {
			return "offboarding/offboarding";
		}
}
