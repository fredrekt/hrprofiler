package com.alliance.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class BankAccounts {
	@Id
	private int bankID;
	private String cardName;
	private int cardNumber;
	private int userID;
	
	
	public void setbankID(int bankID) {
		this.bankID = bankID;
	}
	
	public int getbankID(){
		return bankID;
	}
	
	public void setcardName(String cardName) {
		this.cardName = cardName;
	}
	
	public String getcardName(){
		return cardName;
	}
	
	public void setcardNumber(int cardNumber) {
		this.cardNumber = cardNumber;
	}
	
	public int getcardNumber(){
		return cardNumber;
	}
	
	
	public void setuserID(int userID) {
		this.userID = userID;
	}
	
	public int getuserID(){
		return userID;
	}
	

}
