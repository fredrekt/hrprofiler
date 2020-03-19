package com.alliance.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

@Entity
public class OffboardingDetails {
	
	@Id
	@NotNull
	private int EmpID;
	private String letter;
	private String remarks;
	private Date exitInterview;
	private Date clearanceSched;
	private Date finalPay;

	public int getEmpID() {
		return EmpID;
	}
	public void setEmpID(int empID) {
		EmpID = empID;
	}
	public String getLetter() {
		return letter;
	}
	public void setLetter(String letter) {
		this.letter = letter;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public Date getExitInterview() {
		return exitInterview;
	}
	public void setExitInterview(Date exitInterview) {
		this.exitInterview = exitInterview;
	}
	public Date getClearanceSched() {
		return clearanceSched;
	}
	public void setClearanceSched(Date clearanceSched) {
		this.clearanceSched = clearanceSched;
	}
	public Date getFinalPay() {
		return finalPay;
	}
	public void setFinalPay(Date finalPay) {
		this.finalPay = finalPay;
	}
	
	public void setEverything(OffboardingDetails offdetails ) {
		this.EmpID = offdetails.getEmpID();
		this.letter = offdetails.getLetter();
		this.remarks = offdetails.getRemarks();
		this.exitInterview = offdetails.getExitInterview();
		this.clearanceSched = offdetails.getClearanceSched();
		this.finalPay = offdetails.getFinalPay();
	}
		
}
