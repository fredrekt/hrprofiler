package com.alliance.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

@Entity
public class Employee {
	@Id
	@NotNull
	private int EmpID;
	private String firstName;
	private String middleName;
	private String lastName;
	private String dependentFirstName;
	private String dependentLastName;
	private Date date;
	private Date dateOfBirth;
	private Date dateFiled;
	private Date dateResolved;
	private int age;
	private String Gender;
	private String address;
	private String telNumber;
	private String mobNumber;
	private String sssNumber;
	private String birNumber;
	private String tinNumber;
	private String philHNumber;
	private String hdmfNumber;
	private String edBackground;
	private String workExp;
	private String empCategory;
	private String empTraining;
	private String designation;
	private String salaryPackage;
	private String Level;
	private String workstation;
	private String Project;
	private String Team;
	private String BusinessUnit;
	private String HR;
	private String benefits;
	private String violation;
	private String disciplinaryAction;
	private String Status;
	private int incentive;
	private int amount;
	private int year;
	private int year2;
	private String Secondary;
	private int yearSec;
	private int yearSec2;
	private String College;
	private int CollegeYear;
	private int CollegeYear2;


	public int getEmpID() {
		return EmpID;
	}
	
	public void setEmpID(int EmpID) {
		this.EmpID = EmpID;
	}

	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getMiddleName() {
		return middleName;
	}


	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public Date getDate() {
		return date;
	}
	
	public void setDate(Date date) {
		this.date = date;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}


	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	
	public Date getDateFiled() {
		return dateFiled;
	}
	
	public void setDateFiled(Date dateFiled) {
		this.dateFiled = dateFiled;
	}
	
	public Date getDateResolved() {
		return dateResolved;
	}
	
	public void setDateResolved(Date dateResolved) {
		this.dateResolved = dateResolved;
	}
	
	public int getAge() {
		return age;
	}
	
	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getTelNumber() {
		return telNumber;
	}


	public void setTelNumber(String telNumber) {
		this.telNumber = telNumber;
	}


	public String getMobNumber() {
		return mobNumber;
	}


	public void setMobNumber(String mobNumber) {
		this.mobNumber = mobNumber;
	}


	public String getSssNumber() {
		return sssNumber;
	}


	public void setSssNumber(String sssNumber) {
		this.sssNumber = sssNumber;
	}


	public String getBirNumber() {
		return birNumber;
	}


	public void setBirNumber(String birNumber) {
		this.birNumber = birNumber;
	}


	public String getTinNumber() {
		return tinNumber;
	}


	public void setTinNumber(String tinNumber) {
		this.tinNumber = tinNumber;
	}


	public String getPhilHNumber() {
		return philHNumber;
	}


	public void setPhilHNumber(String philHNumber) {
		this.philHNumber = philHNumber;
	}


	public String getHdmfNumber() {
		return hdmfNumber;
	}


	public void setHdmfNumber(String hdmfNumber) {
		this.hdmfNumber = hdmfNumber;
	}
	
	public String getStatus() {
		return Status;
	}
	
	public void setStatus(String Status) {
		this.Status = Status;
	}
	
	public String getDependentLastName() {
		return dependentLastName;
	}
	
	public void setDependentLastName(String dependentLastName) {
		this.dependentLastName = dependentLastName;
	}
	
	public String getDependentFirstName() {
		return dependentFirstName;
	}
	
	public void setDependentFirstName(String dependentFirstName) {
		this.dependentFirstName = dependentFirstName;
	}

	public String getEdBackground() {
		return edBackground;
	}


	public void setEdBackground(String edBackground) {
		this.edBackground = edBackground;
	}


	public String getWorkExp() {
		return workExp;
	}


	public void setWorkExp(String workExp) {
		this.workExp = workExp;
	}
	
	public String getProject() {
		return Project;
	}
	
	public void setProject(String Project) {
		this.Project = Project;
	}
	
	public String getTeam() {
		return Team;
	}
	
	public void setTeam(String Team) {
		this.Team = Team;
	}
	
	public String getHR() {
		return HR;
	}
	
	public void setHR(String HR) {
		this.HR = HR;
	}
	
	public String getBusinessUnit() {
		return BusinessUnit;
	}
	
	public void setBusinessUnit(String BusinessUnit) {
		this.BusinessUnit = BusinessUnit;
	}

	public String getBenefits() {
		return benefits;
	}
	
	public void setBenefits(String benefits) {
		this.benefits = benefits;
	}

	public String getEmpCategory() {
		return empCategory;
	}


	public void setEmpCategory(String empCategory) {
		this.empCategory = empCategory;
	}


	public String getDesignation() {
		return designation;
	}


	public void setDesignation(String designation) {
		this.designation = designation;
	}


	public String getSalaryPackage() {
		return salaryPackage;
	}


	public void setSalaryPackage(String salaryPackage) {
		this.salaryPackage = salaryPackage;
	}


	public String getLevel() {
		return Level;
	}


	public void setLevel(String Level) {
		this.Level = Level;
	}


	public String getWorkstation() {
		return workstation;
	}


	public void setWorkstation(String workstation) {
		this.workstation = workstation;
	}

	public String Gender() {
		return Gender;
	}

	public void setGender(String Gender) {
		this.Gender = Gender;
	}
	
	public int getIncentive() {
		return incentive;
	}
	
	public void setIncentive(int incentive) {
		this.incentive = incentive;
	}
	
	public int getAmount() {
		return amount;
	}
	
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	public String getViolation() {
		return violation;
	}
	
	public void setViolation(String violation) {
		this.violation = violation;
	}
	
	public String getDisciplinaryAction() {
		return disciplinaryAction;
	}
	
	public void setDisciplinaryAction(String disciplinaryAction) {
		this.disciplinaryAction = disciplinaryAction;
	}
	
	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getYear2() {
		return year2;
	}

	public void setYear2(int year2) {
		this.year2 = year2;
	}
	public String getSecondary() {
		return Secondary;
	}

	public void setSecondary(String secondary) {
		Secondary = secondary;
	}

	public int getYearSec() {
		return yearSec;
	}

	public void setYearSec(int yearSec) {
		this.yearSec = yearSec;
	}

	public int getYearSec2() {
		return yearSec2;
	}

	public void setYearSec2(int yearSec2) {
		this.yearSec2 = yearSec2;
	}
	
	public String getEmpTraining() {
		return empTraining;
	}
	
	public void setEmpTraining(String empTraining) {
		this.empTraining = empTraining;
	}
	
	

	public void setAll(Employee employee) {
		this.firstName=employee.getFirstName();
		this.middleName=employee.getMiddleName();
		this.lastName=employee.getLastName();
		this.address=employee.getAddress();
		this.birNumber=employee.getBirNumber();
		this.dateOfBirth=employee.getDateOfBirth();
		this.designation=employee.getDesignation();
		this.edBackground=employee.getEdBackground();
		this.empCategory=employee.getEmpCategory();
		this.hdmfNumber=employee.getHdmfNumber();
		this.Level=employee.getLevel();
		this.mobNumber=employee.getMobNumber();
		this.philHNumber=employee.getPhilHNumber();
		this.salaryPackage=employee.getSalaryPackage();
		this.sssNumber=employee.getSssNumber();
		this.telNumber=employee.getTelNumber();
		this.tinNumber=employee.getTinNumber();
		this.workExp=employee.getWorkExp();
		this.workstation=employee.getWorkstation();
		this.Gender=employee.Gender();
		this.year=employee.getYear();
		this.year2=employee.getYear2();
		this.Secondary=employee.getSecondary();
		this.yearSec=employee.getYearSec();
		this.yearSec2=employee.getYearSec2();
		this.Project=employee.getProject();
		this.Team=employee.getTeam();
		this.BusinessUnit=employee.getBusinessUnit();
		this.HR=employee.getHR();
		this.date=employee.getDate();
		this.age=employee.getAge();
		this.benefits=employee.getBenefits();
		this.dateFiled=employee.getDateFiled();
		this.dateResolved=employee.getDateResolved();		
		this.dependentFirstName=employee.getDependentFirstName();
		this.dependentLastName=employee.getDependentLastName();
		this.salaryPackage=employee.getSalaryPackage();
		this.Status=employee.getStatus();
		this.incentive=employee.getIncentive();
		this.amount=employee.getAmount();
		this.violation=employee.getViolation();
		this.disciplinaryAction=employee.getDisciplinaryAction();
		this.empTraining=employee.getEmpTraining();
	}

	public String toString() {
		return "[firstName:"+firstName+",lastName:"+lastName+",dateOfBirth:"+dateOfBirth+",empCategory:"+empCategory+",level:"+Level+",Gender:"+Gender+"]";
	}

	public int getCollegeYear() {
		return CollegeYear;
	}

	public void setCollegeYear(int collegeYear) {
		CollegeYear = collegeYear;
	}

	public int getCollegeYear2() {
		return CollegeYear2;
	}

	public void setCollegeYear2(int collegeYear2) {
		CollegeYear2 = collegeYear2;
	}

	public String getCollege() {
		return College;
	}

	public void setCollege(String college) {
		College = college;
	}



	

	

	

	

	
}
