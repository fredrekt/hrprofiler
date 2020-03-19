package com.alliance.controller.view;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alliance.entity.Employee;
import com.alliance.entity.RecruitmentDetails;
import com.alliance.repository.EmployeeRepository;
import com.alliance.repository.RecruitmentDetailsRepository;

@Controller
public class ChartController {
	@Autowired
	EmployeeRepository emprepo;
	@Autowired 
	RecruitmentDetailsRepository recdetrepo;
	
	@RequestMapping("/reports")
	public ModelAndView reportsPage() {
		//RecruitmentDetails rdtails = (RecruitmentDetails)recdetrepo.findRecruitsByDate();
		List<RecruitmentDetails> rdtails= (List<RecruitmentDetails>)recdetrepo.findRecruitsByDate(6666);
		List<RecruitmentDetails> rdall= (List<RecruitmentDetails>)recdetrepo.findAll();
		ModelAndView mv = new ModelAndView("/reports/index");
		mv.addObject("employee",rdtails);
		mv.addObject("recruit", rdall);
		return mv;
	}
	
	@RequestMapping("/reports/generate")
	public ModelAndView reportsPageGenerate(@RequestParam int date) {
		//RecruitmentDetails rdtails = (RecruitmentDetails)recdetrepo.findRecruitsByDate();
		List<RecruitmentDetails> rdtails= (List<RecruitmentDetails>)recdetrepo.findRecruitsByDate(date);
		ModelAndView mv = new ModelAndView("/reports/index");
		mv.addObject("employee",rdtails);
		return mv;
	}
	
	
	@RequestMapping("/reports/demographics")
	public ModelAndView maleAll() {
		ModelAndView mv=new ModelAndView("/reports/demographics");
		List<Employee> employees= (List<Employee>)emprepo.findAllByOrderByGenderAsc();
		List<Employee> femp= (List<Employee>)emprepo.findAllByOrderByGenderFemale();
		mv.addObject("employees",employees);
		mv.addObject("femp",femp);
			return mv;
		}
	
	@RequestMapping("/reports/hr-efficiency")
	public ModelAndView reportsEfficiency() {
		ModelAndView mv = new ModelAndView("/reports/efficiency");
		return mv;
	}
	
	@RequestMapping("/reports/labor-relations")
	public ModelAndView reportsLabor() {
		ModelAndView mv = new ModelAndView("/reports/labor");
		return mv;
	}
	@RequestMapping("/generate-all-male")
	public ModelAndView generateMale() {
//	Employee e = emprepo.findAll(new Sort(Sort.Direction.ASC,"gender"));
	Employee e = (Employee)emprepo.findEmployeesByGender("male");
	ModelAndView mv = new ModelAndView("reports/demographics");
		mv.addObject("employee",e);
		return mv;
	}
}

