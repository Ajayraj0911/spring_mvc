package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Bean.EmployeeBean;
import com.dao.EmployeeDao;

@Controller
//@RequestMapping("/employee")
public class EmployeeController {
	/*
	 * @RequestMapping("/home") public String dashboard() {
	 * 
	 * return "redirect:newdashboard"; }
	 * 
	 * @RequestMapping("/newdashboard") public String newdashboard() {
	 * 
	 * System.out.println("new dashboard called ... " ); return "home";
	 * 
	 * }
	 */

	@Autowired
	EmployeeDao employeeDao;

	@RequestMapping("/addemployee")
	public String addEmployee(Model model) {
		EmployeeBean employeeBean = new EmployeeBean();
		model.addAttribute("employeeBean", employeeBean);
		return "addEmployee";

	}
//	@RequestMapping("/insertemployee")
//	@RequestMapping(value = "/insertemployee",method = RequestMethod.POST)
//	@PostMapping("/insertemployee")
//  @GetMapping("/insertemployee")
//	public String insertEmployee(@RequestParam("txtEmployeeName") String eName,@RequestParam("txtEmployeeAge") int eAge) {
//		
//		System.out.println("insert employee ");
//		System.out.println("Employee Name: - "+eName);
//		System.out.println("Employee Age: - "+eAge);
//		return "home";
//		
//	}

	@PostMapping(value = "/insertemployee")
	public String insertEmployee(@Valid @ModelAttribute("employeeBean") EmployeeBean employeeBean, BindingResult br) {

		if (br.hasErrors()) {

			return "addEmployee";
		}
		int res = employeeDao.addEmployee(employeeBean);

		if (res > 0) {

			return "redirect:viewemployee";
		}
		return "redirect:viewemployee";

	}

	@GetMapping(value = "/employeeLogin")
	public String employeeLogin(@RequestParam("txtEmployeeEmail") String eemail,
			@RequestParam("txtEmployeePassword") String epassword, HttpSession session) {

		EmployeeBean employeeBean = employeeDao.loginEmployee(eemail, epassword);
		if (employeeBean != null) {
			session.setAttribute("employeeBean", employeeBean);
			return "redirect:/viewemployee";
		}

		return "login";
	}

	@GetMapping(value = "/login")

	public String login() {

		return "login";
	}

	@GetMapping(value = "/viewemployee")
	public String employeeList(Model model) {

		List<EmployeeBean> list = employeeDao.getAllEmployees();
		model.addAttribute("list", list);

		return "employeelist";

	}

	@RequestMapping(value = "/deleteemployee/{eid}")
	public String deleteEmployee(@PathVariable("eid") int eId) {

		employeeDao.deleteEmployee(eId);
		return "redirect:/viewemployee";
	}

	@RequestMapping(value = "/editemployee/{eid}")
	public String editEmplooyee(@PathVariable("eid") int eId, Model model) {

		EmployeeBean employeeBean = employeeDao.getEmployeeById(eId);
		model.addAttribute("employeeBean", employeeBean);
		return "editEmployee";
	}

	@RequestMapping(value = "/updateemployee")
	public String updateEmployee(EmployeeBean employeeBean) {

		employeeDao.updateEmployee(employeeBean);
		return "redirect:/viewemployee";
	}
}
