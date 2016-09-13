package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.UserRegistration;
import com.service.UserRegistrationServiceImpl;

@Controller
public class UserRegistrationController 
{
	@Autowired
	UserRegistrationServiceImpl newuser;
	
	@RequestMapping(value="/Register",method=RequestMethod.GET)  
    public ModelAndView register() 
	{  
		
        return new ModelAndView("Register","userreg",new UserRegistration());
	}
	
	@RequestMapping(value="/adduser", method=RequestMethod.POST)
	public ModelAndView addUser(@ModelAttribute("userreg")UserRegistration u)
	{

		newuser.addUserRegistration(u);		
		
		return new ModelAndView ("Register");
		
	}
	
}