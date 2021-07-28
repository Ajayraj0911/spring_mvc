package com.Bean;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class EmployeeBean {

	@Size(min = 3,max = 10,message = "please check employeee Name size")
	@NotBlank(message = "This field is Required")
	private String eName;
	
	@NotNull(message="Age is Required")
	private int eAge;
	private int eId;
	@Email(message = "please check Email")
	private String eEmail;
	@Pattern(regexp = "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}")
	@NotBlank(message = "This field is Required")
	private String ePassword;
	
	
	public int geteId() {
		return eId;
	}
	
	public String geteEmail() {
		return eEmail;
	}

	public void seteEmail(String eEmail) {
		this.eEmail = eEmail;
	}

	public String getePassword() {
		return ePassword;
	}
	public void seteId(int eId) {
		this.eId = eId;
	}
	public void setePassword(String ePassword) {
		this.ePassword = ePassword;
	}
	
	public String geteName() {
		return eName;
	}
	public int geteAge() {
		return eAge;
	}
	public void seteName(String eName) {
		this.eName = eName;
	}
	public void seteAge(int eAge) {
		this.eAge = eAge;
	}
	
	

}
