package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.UserBean;
import com.spring.repo.UserRepository;

@Controller
@RequestMapping("/user")
public class UserController1 {

	@Autowired
	private UserRepository repo;

	@GetMapping(value = "/register")
	public ModelAndView register() {
		return new ModelAndView("register", "userObj", new UserBean());
	}

	@PostMapping(value = "insert")
	public String doRegister(@ModelAttribute("userObj") UserBean user, Model m) {
		int i = repo.insertUser(user);

		if (i > 0) {
			return "redirect:/";
		} else {
			m.addAttribute("message", "Fill the blanks");
			return "register";
		}
	}
}
