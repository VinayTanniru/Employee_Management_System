package com.ems.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ems.model.Employee;

@Repository
public class EmployeeDao {
 
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void addEmployee(Employee employee) {
		this.hibernateTemplate.saveOrUpdate(employee);
	}
	
	public List<Employee> getAll(){
		return this.hibernateTemplate.loadAll(Employee.class);
	}

	public Employee getById(int id) {
		return this.hibernateTemplate.get(Employee.class, id);
	}
	
	@Transactional
	public void delete(int id) {
		Employee emp = this.hibernateTemplate.get(Employee.class, id);
		if (emp != null) {
			this.hibernateTemplate.delete(emp);
		}
	}
}
