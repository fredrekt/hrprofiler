package com.alliance.controller.view;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.alliance.entity.Employee;
import com.alliance.repository.EmployeeRepository;

@RestController
public class RESTController {
	@Autowired
	private SmtpMailSender smtpMailSender;
	@Autowired
	private EmployeeRepository emprepo;
	@RequestMapping("/send-mail")
	public ModelAndView sendMail(@RequestParam int EmpID) throws MessagingException{
		Employee emp = new Employee();
		emp.setEmpID(EmpID);
		System.out.print(EmpID);
		smtpMailSender.send("fredrickjohng6@gmail.com","HR Admin Request: Training and Orientation; EmpID: "+emp.getEmpID(),"<a href='http://localhost:8020/confirmed-training?EmpID="+emp.getEmpID()+"' class='btn btn-sm btn-primary'>Click me to approve the admin request for employee onboarding: Training and Orientation.</a>");
		ModelAndView mv = new ModelAndView("/employee/newEmployee");
		return mv;
	}
	@RequestMapping("/confirmed-training")
	public ModelAndView confirmedTraining(@RequestParam int EmpID) {
		ModelAndView mv = new ModelAndView("/mailview/training");
		mv.addObject("EmpID",EmpID);
		return mv;
	}
	
	@RequestMapping("/send-mail2")
	public ModelAndView sendMail2(@RequestParam int EmpID) throws MessagingException{
		Employee emp = new Employee();
		emp.setEmpID(EmpID);
		System.out.print(EmpID);
		smtpMailSender.send("fredrickjohng6@gmail.com","HR Admin Request: Company Identification: ","Employee ID:"+emp.getEmpID()+"<br/><a href='http://localhost:8020/confirmed-identification?EmpID="+emp.getEmpID()+"' class='btn btn-sm btn-primary'>Click me to approve the admin request for employee onboarding: Company Identifaction.</a>");
		ModelAndView mv = new ModelAndView("/employee/newEmployee");
		return mv;
	}
	@RequestMapping("/confirmed-identification")
	public ModelAndView confirmedIdentification(@RequestParam int EmpID) {
		ModelAndView mv = new ModelAndView("/mailview/identification");

		mv.addObject("EmpID",EmpID);	
		mv.addObject("employee",emprepo.findOne(EmpID));
		return mv;
	}
	
	@RequestMapping("/send-mail-successful")
	public ModelAndView sendMail3() throws MessagingException{
		smtpMailSender.send("fredrickjohng6@gmail.com","Employee Deployment: Confirmed","<a href='http://localhost:8020/confirmed-deployment' class='btn btn-sm btn-primary'>Click me to approve the admin request for employee onboarding: Deployment to Operations.</a>");
		ModelAndView mv = new ModelAndView("/employee/newEmployee");
		return mv;
	}
	@RequestMapping("/confirmed-deployment")
	public ModelAndView confirmedDeployment() {
		ModelAndView mv = new ModelAndView("/mailview/deployment");
		return mv;
	}
 
}
