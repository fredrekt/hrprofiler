package com.alliance.controller.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.alliance.entity.Customer;
import com.alliance.model.CustomerSearchFilter;
import com.alliance.service.CustomerService;

@Controller(value = "indexController")
@RequestMapping(value = "/")
public class IndexController {
	
	@Autowired
	private CustomerService customerService;
	
//Onboarding 
	
	@RequestMapping(value ="/employee", method = RequestMethod.GET)
	public String onBoard() {
		return "index";
	}
	
	@RequestMapping(value = "/onboarding", method = RequestMethod.GET)
	public String SetUpBoard(){
		return "onboarding";
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String getCustomerList(ModelMap map, CustomerSearchFilter searchFilter) {
		map.addAttribute("customerList", customerService.getCustomerListResult(searchFilter).results);
		return "customer/index";
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/customer/add")
	public String addCustomer(ModelMap map) {
		return "customer/add";
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/customer/update")
	public String updateCustomer(@RequestParam("customerId") int id, 
			ModelMap map) {
		map.addAttribute("customer", customerService.getCustomerById(id));
		return "customer/update";
	}
}
