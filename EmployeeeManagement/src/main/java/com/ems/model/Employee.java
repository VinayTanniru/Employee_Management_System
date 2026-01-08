package com.ems.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Employee {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String ename;
	private String email;
	private int salary;
	private long phnno;
	private String gender;
    private String dept;
    private String insurance;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public long getPhnno() {
		return phnno;
	}
	public void setPhnno(long phnno) {
		this.phnno = phnno;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getInsurance() {
		return insurance;
	}
	public void setInsurance(String insurance) {
		this.insurance = insurance;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", ename=" + ename + ", email=" + email + ", salary=" + salary + ", phnno="
				+ phnno + ", gender=" + gender + ", dept=" + dept + ", insurance=" + insurance + "]";
	}

	public Employee(int id, String ename, String email, int salary, long phnno, String gender, String dept,
			String insurance) {
		super();
		this.id = id;
		this.ename = ename;
		this.email = email;
		this.salary = salary;
		this.phnno = phnno;
		this.gender = gender;
		this.dept = dept;
		this.insurance = insurance;
	}

	public Employee() {
		super();
	}
}
