package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
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
	
	@RequestMapping(value="/newproduct", method=RequestMethod.POST)
	public ModelAndView addProduct(@ModelAttribute("addprod")Product p,ModelMap model)
	{
		p.setImgname(p.getProductImage().getOriginalFilename());
		newprod.addProduct(p);
		MultipartFile productImage= p.getProductImage();
		System.out.println(productImage.getOriginalFilename());
		try {
			productImage.transferTo(new File("C://Users/Brandon/git/ecommerce/src/main/webapp/resources/img/imguploads/"+productImage.getOriginalFilename()));
			
			
			
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		model.addAttribute("successmsg", "Product Added Successfully");
		p.setInputNull();
		return new ModelAndView("AddProduct");
		
	}
	@RequestMapping(value="/Productlist")
	public ModelAndView listProduct(Model model)
	{
		ObjectMapper mapper=new ObjectMapper();
		
		List<Product> plist=newprod.listProducts();
		try {
			String productlist=mapper.writeValueAsString(plist);
			System.out.println(productlist);
			model.addAttribute("products",productlist);
		} catch (JsonGenerationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return new ModelAndView ("Productlist");
		
	}
	@RequestMapping("/ProductPagination")  
    public ModelAndView productpagination(Model model) 
	{  
ObjectMapper mapper=new ObjectMapper();
		
		List<Product> plist=newprod.listProducts();
		try {
			String productlist=mapper.writeValueAsString(plist);
			model.addAttribute("products",productlist);
		} catch (JsonGenerationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return new ModelAndView("ProductPagination");
	}
}
