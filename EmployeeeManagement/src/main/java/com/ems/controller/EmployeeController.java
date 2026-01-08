package com.ems.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ems.dao.EmployeeDao;
import com.ems.model.Employee;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeDao dao;

	@RequestMapping("/")
	public String root() {
		return "redirect:/home";
	}

	@RequestMapping("/home")
	public String home() {
		return "index";
	}

	@RequestMapping("/addEmployee")
	public String addEmployee(@ModelAttribute Employee employee, Model model) {
		this.dao.addEmployee(employee);
		return "redirect:/getAll";
	}

	@RequestMapping("/getAll")
	public String getAll(Model model) {
		List<Employee> list = this.dao.getAll();
		model.addAttribute("employees", list);
		return "allEmployees";
	}

	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") int id) {
		this.dao.delete(id);
		return "redirect:/getAll";
	}

	@RequestMapping("/update/{id}")
	public String update(@PathVariable("id") int id, Model model) {
		Employee employee = this.dao.getById(id);
		model.addAttribute("employee", employee);
		return "editEmployee";
	}
}
