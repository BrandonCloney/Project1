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
	
	@RequestMapping("/Login")  
    public ModelAndView login() 
	{  
        return new ModelAndView("Login");
	}
	@RequestMapping("/logout")  
    public ModelAndView logoutsuccess() 
	{  
        return new ModelAndView("logout");
	}
	
	@RequestMapping("/error")  
    public ModelAndView errorpage() 
	{  
        return new ModelAndView("error");
	}

}