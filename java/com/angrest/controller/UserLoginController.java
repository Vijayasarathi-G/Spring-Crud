package com.angrest.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.angrest.bean.User;
import com.angrest.repository.UserRepository;

@Controller
public class UserLoginController {

	@Autowired
	private UserRepository userRepository;

	@GetMapping(value = "/userlist")
	public ModelAndView welcome(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		if(request.isUserInRole("ROLE_ADMIN")) {
			model.addObject("Users", userRepository.findAll());
			model.setViewName("AdminUser");
        } else if(request.isUserInRole("ROLE_USER")) {
        	model.addObject("Users", userRepository.findAll());
    		model.setViewName("EndUser");
        }
		return model;
	}

	@GetMapping(value = "/access")
	public ModelAndView accessDenied() {
		ModelAndView model = new ModelAndView();

		model.setViewName("accessDenied");
		return model;

	}

	@GetMapping(value = "/admin")
	public ModelAndView admin() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Admin Page");
		model.addObject("message", "This is protected page! Only Admin can access this page.");
		model.setViewName("admin");

		return model;

	}

	@GetMapping(value = "/")
	public ModelAndView login() {
		ModelAndView model = new ModelAndView();
		model.setViewName("Home");
		return model;
	}

	@GetMapping(value = "/login")
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login");

		return model;

	}

	@RequestMapping("/userupdate")
	public String updateUsers(User user) {
		System.out.println(user.getId() + "===" + user.getFirstName() + "===" + user.getLastName());
		userRepository.save(user);
		return "redirect:/userlist";
	}

	@GetMapping("/userdelete/{id}")
	public String deleteUsers(@PathVariable Long id) {
		System.out.println("User Id : " + id);
		userRepository.deleteById(id);
		return "redirect:/userlist";
	}

	@PostMapping("/usercreate")
	public User createUsers(User user) {
		System.out.println(user.getId() + "===" + user.getFirstName() + "===" + user.getLastName());

		return userRepository.save(user);
	}
}