package com.waytopolicy.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Proxy;

@Entity
@Table(name="admins")
public class User {
	@Id
	String adminId;
	String firstName;
	String lastName;
	Integer age;
	String gender;
	String dob;
    String contactNo;
    String altContactNo;
	//String address;
	String emailId;
	String password;
	
	public User(String adminId, String firstName, String lastName, Integer age, String gender, String dob,
			String contactNo, String altContactNo, String emailId, String password) {
		super();
		this.adminId = adminId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.gender = gender;
		this.dob = dob;
		this.contactNo = contactNo;
		this.altContactNo = altContactNo;
		//this.address = address;
		this.emailId = emailId;
		this.password = password;
	}

	public User() {
		super();
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getAltContactNo() {
		return altContactNo;
	}

	public void setAltContactNo(String altContactNo) {
		this.altContactNo = altContactNo;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [adminId=" + adminId + ", firstName=" + firstName + ", lastName=" + lastName + ", age=" + age
				+ ", gender=" + gender + ", dob=" + dob + ", contactNo=" + contactNo + ", altContactNo=" + altContactNo
				+ ", emailId=" + emailId + ", password=" + password + "]";
	}

	
	
	
	

}
