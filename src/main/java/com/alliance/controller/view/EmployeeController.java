package com.alliance.controller.view;

import java.util.List;

import javax.mail.MessagingException;

import org.aspectj.weaver.patterns.IScope;
import org.aspectj.weaver.patterns.ThisOrTargetAnnotationPointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alliance.entity.Employee;
import com.alliance.entity.OffboardingDetails;
import com.alliance.repository.EmployeeRepository;
import com.alliance.repository.OffboardRepository;

import javassist.expr.NewArray;

@SuppressWarnings("unused")
@Controller
public class EmployeeController {
	@Autowired
	private SmtpMailSender smtpMailSender;
	@Autowired
	private EmployeeRepository emprepo;
	@Autowired
	private OffboardRepository offboardrepo;
	@RequestMapping("/employee")
	public ModelAndView employee() {
		ModelAndView mv=new ModelAndView("/employee/index");
		List<Employee> employees=(List<Employee>)emprepo.findAll();
		mv.addObject("employees",employees);
		
		return mv;
	} 
	
	@RequestMapping("/employee/new")
	public ModelAndView newEmployee(@RequestParam int EmpID) {
		ModelAndView mv=new ModelAndView("/employee/newEmployee");
		mv.addObject("EmpID",EmpID);
		mv.addObject("employee",emprepo.findOne(EmpID));
		return mv;
	}
	
	@RequestMapping("/employee/add")
	public ModelAndView addEmployee(Employee employee) {
		
		Employee details = emprepo.save(employee);
		ModelAndView mv = new ModelAndView( "/employee/newEmployee" );
		mv.addObject("addStatus", true);
		mv.addObject("name", details.getFirstName());
		mv.addObject("lname", details.getLastName());
		mv.addObject("work", details.getDesignation());
		mv.addObject("empid", details.getEmpID());
		return mv;
	}
	

	
	@RequestMapping("/employee/update")
	public ModelAndView updateEmployee(Employee employee) {
		ModelAndView mv=new ModelAndView("/employee/editEmployee");
		Employee fromDB=(Employee)emprepo.findOne(employee.getEmpID());
		fromDB.setAll(employee);
		emprepo.saveAndFlush(fromDB);
		mv.addObject("addStatus",true);
		return mv;
	}
	
	@RequestMapping("/employee/update-information")
	public ModelAndView viewAllEmployees() {
		ModelAndView mv=new ModelAndView("/update/update");
		List<Employee> employees= (List<Employee>)emprepo.findAll();
		mv.addObject("employees",employees);
		return mv;
	}
	
	@RequestMapping("/employee/offboarding")
	public ModelAndView fetchEmployees() {
		ModelAndView mv=new ModelAndView("/offboarding/offboarding");
		List<Employee> employees= (List<Employee>)emprepo.findAll();
		mv.addObject("employees",employees);
		return mv;
	}
	
	
	@RequestMapping("/employee/search")
	public ModelAndView searchEmployee(@RequestParam int EmpID) {
		ModelAndView mv=new ModelAndView("/employee/index");
		mv.addObject("employee",emprepo.findOne(EmpID));
		return mv;
	}
	//adolfo and rhyle feature
	
	@RequestMapping("/employee/edit")
	public ModelAndView editEmployee(@RequestParam int EmpID) {
		ModelAndView mv=new ModelAndView("/employee/editEmployee");
		mv.addObject("EmpID",EmpID);
		mv.addObject("employee",emprepo.findOne(EmpID));
		return mv;
	}
	
	//lance feature
	@RequestMapping("/employee/resign")
	public ModelAndView resignEmployee(@RequestParam int EmpID) {
		ModelAndView mv = new ModelAndView("/");
		return mv;
	}
	
	// My feature (controller/routes) -fred 
	
	//Onboarding 
	
			@RequestMapping(value ="/hrprofiler", method = RequestMethod.GET)
			public String onBoard() {
				return "onboarding/index";
			}
			
			@RequestMapping(value = "/onboarding", method = RequestMethod.GET)
			public String SetUpBoard(){
				return "onboarding/onboarding";
			}
			
			@RequestMapping("/training-orientation")
			public ModelAndView updateTraining(@RequestParam int EmpID, String empTraining) {
				ModelAndView mv=new ModelAndView("/mailview/training");
				Employee fromDB=(Employee)emprepo.findOne(EmpID);
				fromDB.setEmpTraining(empTraining);				
			//	mv.addObject("empTraining", fromDB.getEmpTraining());
				emprepo.saveAndFlush(fromDB);
				mv.addObject("empid",fromDB.getEmpID());
				mv.addObject("emptraining",fromDB.getEmpTraining());
				mv.addObject("successTraining",true);
				return mv;
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
			
			//lance 
			@RequestMapping("/submit-offboarding")
			public ModelAndView submitFiring(OffboardingDetails offboardingDetails)throws MessagingException{
				OffboardingDetails details = offboardrepo.save(offboardingDetails);
				ModelAndView mv = new ModelAndView("offboarding/offboarding");
				smtpMailSender.send("fredrickjohng6@gmail.com","HR Admin Request: Employee Resignation; EmpID: "+offboardingDetails.getEmpID(),"<a href='http://localhost:8020/confirmed-training?EmpID="+offboardingDetails.getEmpID()+"' class='btn btn-sm btn-primary'>Click me to approve the admin request for employee onboarding: Employee Offboarding.</a>");
				mv.addObject("addStatus", true);
				
				return mv;
			}
			
			
			
}
