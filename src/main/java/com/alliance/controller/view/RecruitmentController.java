package com.alliance.controller.view;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alliance.entity.Employee;
import com.alliance.entity.RecruitmentDetails;
import com.alliance.repository.EmployeeRepository;
import com.alliance.repository.RecruitmentDetailsRepository;

@Controller
public class RecruitmentController {
	@Autowired
	private RecruitmentDetailsRepository recruitRepo;
	private EmployeeRepository empRepo;
	
	@RequestMapping("/recruitment")
	public ModelAndView index() {
		ModelAndView mv=new ModelAndView("/recruitment/index");
		mv.addObject("recruitmentDetails",(List<RecruitmentDetails>)recruitRepo.findAll());
		return mv;
	}
	
	@RequestMapping("/recruitment/new")
	public String newRequest() {
		return "/recruitment/newRequest";
	}
	
	@RequestMapping("/recruitment/add")
	public ModelAndView addRequest(RecruitmentDetails recruitmentDetails) {
		RecruitmentDetails details= recruitRepo.save(recruitmentDetails);
		ModelAndView mv=new ModelAndView("/recruitment/newRequest");
		mv.addObject("EmpID",details.getEmpID());
		mv.addObject("saveStatus",true);
		return mv;
	}
	
	@RequestMapping("/recruitment/update/dateaccepted")
	public ModelAndView dateAcceptedUpdate(@RequestParam("id") int EmpID, @RequestParam("date") Date date) {
		ModelAndView mv=new ModelAndView("/recruitment/index");
		RecruitmentDetails fromDB=recruitRepo.findOne(EmpID);
		fromDB.setDateAccepted(date);
		recruitRepo.saveAndFlush(fromDB);
		mv.addObject("recruitmentDetails", recruitRepo.findAll());
		return mv;
	}
	
//	@RequestMapping("/training-orientation")
//	public ModelAndView startTraining(Employee employee) {
//		Employee details = empRepo.save(employee);
//		ModelAndView mv = new ModelAndView("/confirmed-training");
//		return mv;
//	}
	
}
