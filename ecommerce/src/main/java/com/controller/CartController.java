package com.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.model.Cart;
import com.model.CartItem;
import com.model.Product;
import com.service.ProductServiceImpl;

@Controller
@SessionAttributes({"cartObj"})
public class CartController 
{
	@Autowired
	ProductServiceImpl prod;
	
	
	@Autowired
	HttpSession session;
	
	
	@RequestMapping(value="/additemtocart", method=RequestMethod.GET)
	public String addItemToCart(@RequestParam("productid") String idParam1,Model model)
	{
		Cart cart=(Cart)session.getAttribute("cartObj");
		if(cart==null)
		{
			cart=new Cart();
		}
		
		Integer pid=Integer.valueOf(idParam1);
		int qty=1;
		System.out.println(pid);
		Product p=prod.findProductById(pid);
		
		
		CartItem item = new CartItem();
		item.setProduct(p);
		item.setQuantity(qty);
		double totalprice=p.getProductPrice()*qty;
		item.setTotalprice(totalprice);
		
		List<CartItem> cartList = new ArrayList<CartItem>();
		if(cart.getCartItems()==null)
		{
			cartList.add(item);
			cart.setCartItems(cartList);
		}
		else
		{
			cartList = cart.getCartItems();
			int flag=0;
			
			for(int i=0;i<cartList.size();i++)
			{
				if(cartList.get(i).getProduct().getpID()==p.getpID())
				{
					cartList.get(i).setQuantity(cartList.get(i).getQuantity()+1);
					cartList.get(i).setTotalprice(cartList.get(i).getTotalprice()+p.getProductPrice());
					flag=1;
					break;
				}
			}
			if(flag==0)
				{
				cartList.add(item);
				cart.setCartItems(cartList);
				}
			
			}
			cart.calcGrandTotal();
			cart.setCartCount(cart.getCartCount()+1);
			model.addAttribute("cartObj",cart);
		
		
		
		return "redirect:" + "viewcart?productid="+idParam1;
	}
	
	
	@RequestMapping("/viewcart")
	public ModelAndView viewCart(Model model)
	{
		Cart cart=(Cart) session.getAttribute("cartObj");
		
		if(cart==null|| cart.getCartCount()==0)
		{
			model.addAttribute("emptycart","emptycart");
		}
		else
		{
			model.addAttribute("emptycart", "notempty");
			model.addAttribute("grandtotal", cart.getGrandTotal());
			
			ObjectMapper mapper = new ObjectMapper();
			List<CartItem> cartitems= cart.getCartItems();
			
			try {
				String cartitemlist=mapper.writeValueAsString(cartitems);
				System.out.println(cartitemlist);
				model.addAttribute("cartitems", cartitemlist);
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
			
			
			
		}
		
		return new ModelAndView("viewcart");
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
