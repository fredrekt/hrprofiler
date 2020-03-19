package com.alliance.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
@Entity
public class RecruitmentDetails {
	
	@NotNull
	private int ERF;
	@Id
	@NotNull
	private int EmpID;
	private Date dateRequested;
	private Date dateJobOffered;
	@Column(nullable=true)
	private Date dateAccepted;
	@Column(nullable=true)
	private Date dateOnboarding;
	
	public int getERF() {
		return ERF;
	}
	public void setERF(int ERF) {
		this.ERF = ERF;
	}
	public int getEmpID() {
		return EmpID;
	}
	public void setEmpID(int EmpID) {
		this.EmpID = EmpID;
	}
	public Date getDateRequested() {
		return dateRequested;
	}
	public void setDateRequested(Date dateRequested) {
		this.dateRequested = dateRequested;
	}
	public Date getDateJobOffered() {
		return dateJobOffered;
	}
	public void setDateJobOffered(Date dateJobOffered) {
		this.dateJobOffered = dateJobOffered;
	}
	public Date getDateAccepted() {
		return dateAccepted;
	}
	public void setDateAccepted(Date dateAccepted) {
		this.dateAccepted = dateAccepted;
	}
	public Date getDateOnboarding() {
		return dateOnboarding;
	}
	public void setDateOnboarding(Date dateOnboarding) {
		this.dateOnboarding = dateOnboarding;
	}
	
	
}
