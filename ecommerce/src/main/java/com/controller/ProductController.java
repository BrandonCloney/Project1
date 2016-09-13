package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Product;
import com.service.ProductServiceImpl;
@Controller
public class ProductController 
{
	@Autowired
	ProductServiceImpl newprod;
	@RequestMapping(value="/AddProduct", method=RequestMethod.GET)
	public ModelAndView addproduct()
	{
		return new ModelAndView("AddProduct","addprod",new Product());
	}
	
	@RequestMapping(value="/addproduct", method=RequestMethod.POST)
	public ModelAndView addUser(@ModelAttribute("addprod")Product p)
	{
		
		newprod.addProduct(p);
		return new ModelAndView("AddProduct");
		
	}
}
