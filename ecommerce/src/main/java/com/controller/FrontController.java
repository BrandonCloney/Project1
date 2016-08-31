package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FrontController 
{
	@RequestMapping(value={"","/","index"})  
    public ModelAndView home() 
	{  
        return new ModelAndView("index");
	}
	@RequestMapping("/AboutUs")  
    public ModelAndView aboutUs() 
	{  
        return new ModelAndView("AboutUs");
	}
	@RequestMapping("/Register")  
    public ModelAndView register() 
	{  
        return new ModelAndView("Register");
	}
	@RequestMapping("/Login")  
    public ModelAndView login() 
	{  
        return new ModelAndView("Login");
	}
	@RequestMapping("/Product")  
    public ModelAndView product() 
	{  
        return new ModelAndView("Product");
	}
	
}