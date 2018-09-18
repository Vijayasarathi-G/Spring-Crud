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
import com.springrest.bean.UserRole;
import com.springrest.repository.UserRepository;
import com.springrest.repository.UserRoleRepository;
import com.springrest.service.EmailService;

@Controller
public class UserLoginController {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private EmailService emailService;
	
	@Autowired
	private UserRoleRepository userRoleRepository;

	@GetMapping(value = "/userlist")
	public ModelAndView welcome(HttpServletRequest request) throws Exception{
		ModelAndView model = new ModelAndView();
		if(request.isUserInRole("ROLE_ADMIN")) {
			
			model.setViewName("redirect:/admin/userlist");
        } else if(request.isUserInRole("ROLE_USER")) {
        	
    		model.setViewName("redirect:/user/userlist");
        }
		return model;
	}
	
	@GetMapping(value = "/admin/userlist")
	public ModelAndView adminPage(HttpServletRequest request) throws Exception{
		ModelAndView model = new ModelAndView();
		model.addObject("Users", userRepository.findAll());
		model.setViewName("AdminUser");
		return model;
	}
	
	@GetMapping(value = "/user/userlist")
	public ModelAndView userPage(HttpServletRequest request) throws Exception{
		ModelAndView model = new ModelAndView();
        model.addObject("Users", userRepository.findAll());
    	model.setViewName("EndUser");
		return model;
	}

	@GetMapping(value = "/access")
	public ModelAndView accessDenied() throws Exception{
		ModelAndView model = new ModelAndView();

		model.setViewName("accessDenied");
		return model;

	}

	@GetMapping(value = "/admin")
	public ModelAndView admin() throws Exception{

		ModelAndView model = new ModelAndView();
		model.setViewName("admin");

		return model;

	}

	@GetMapping(value = "/")
	public ModelAndView login() throws Exception{
		ModelAndView model = new ModelAndView();
		model.setViewName("Home");
		return model;
	}

	@GetMapping(value = "/login")
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) throws Exception{

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
	public String updateUsers(User user,UserRole role) throws Exception{
		System.out.println("Users :"+user.getId()+" : "+ user.getUserName()+" : "+user.getPassword());
		String encoded = new BCryptPasswordEncoder().encode(user.getPassword());
		user.setEncryptedPassword(encoded);
		userRepository.save(user);
		int userId = userRepository.findUserIdByName(user.getUserName());
		if(user.getId() != null) {
			role.setId(user.getId());
		}
		role.setUser_Id(userId);
		
		userRoleRepository.save(role);
		emailService.sendMail(user);
		return "redirect:/admin/userlist";
	}

	@GetMapping("/userdelete/{id}")
	public String deleteUsers(@PathVariable Long id) throws Exception{
		userRepository.deleteById(id);
		userRoleRepository.deleteById(id);
		return "redirect:/admin/userlist";
	}

	@PostMapping("/usercreate")
	public User createUsers(User user) throws Exception{
		
		return userRepository.save(user);
	}
}