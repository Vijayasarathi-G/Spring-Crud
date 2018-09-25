package com.springrest.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springrest.bean.User;
import com.springrest.exception.CustomException;
import com.springrest.repository.UserRepository;
import com.springrest.service.EmailService;

@Controller
public class UserLoginController {

	@Autowired
	private UserRepository userRepository;

//	@Autowired
//	private EmailService emailService;

	@GetMapping(value = "/userlist")
	public ModelAndView welcome(HttpServletRequest request) throws Exception {
		ModelAndView model = new ModelAndView();
		if (request.isUserInRole("ROLE_ADMIN")) {

			model.setViewName("redirect:/admin/userlist");
		} else if (request.isUserInRole("ROLE_USER")) {

			model.setViewName("redirect:/user/userlist");
		}
		return model;
	}

	@GetMapping(value = "/admin/userlist")
	public ModelAndView adminPage() throws Exception {
		ModelAndView model = new ModelAndView();
		if (userRepository.findAll() == null) {
			// go handleCustomException
			throw new CustomException("400", "Empty userlist");
		} else {
			model.addObject("Users", userRepository.findAll());
			model.setViewName("AdminUser");
			return model;
		}
		
	}

	@GetMapping(value = "/user/userlist")
	public ModelAndView userPage() throws Exception {
		ModelAndView model = new ModelAndView();
		model.addObject("Users", userRepository.findAll());
		model.setViewName("EndUser");
		return model;
	}
	
	@GetMapping(value = "/userdetails")
	public ModelAndView userDetails() throws Exception {
		ModelAndView model = new ModelAndView();
		model.addObject("Users", userRepository.findAll());
		model.setViewName("EndUser");
		return model;
	}

	@GetMapping(value = "/access")
	public ModelAndView accessDenied() throws Exception {
		ModelAndView model = new ModelAndView();

		model.setViewName("accessDenied");
		return model;

	}

	@GetMapping(value = "/admin")
	public ModelAndView admin() throws Exception {

		ModelAndView model = new ModelAndView();
		model.setViewName("admin");
		return model;

	}

	@GetMapping(value = "/")
	public ModelAndView Home() throws Exception {
		ModelAndView model = new ModelAndView();
		model.setViewName("Home");
		return model;
	}

	@GetMapping(value = "/login")
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) throws Exception {

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
	public ModelAndView updateUsers(User user) throws Exception {
		ModelAndView model = new ModelAndView();
		String encoded = new BCryptPasswordEncoder().encode(user.getPassword());
		user.setEncryptedPassword(encoded);
		userRepository.save(user);
	//	emailService.sendMail(user);
		model.setViewName("redirect:/admin/userlist");
		return model;
	}

	@GetMapping("/userdelete/{id}")
	public ModelAndView deleteUsers(@PathVariable Long id) throws Exception {
		ModelAndView model = new ModelAndView();
		userRepository.deleteById(id);
		model.setViewName("redirect:/admin/userlist");
		return model;
	}

	@PostMapping("/usercreate")
	public User createUsers(User user) throws Exception {

		return userRepository.save(user);
	}
}