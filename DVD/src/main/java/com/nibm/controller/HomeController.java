package com.nibm.controller;

import java.io.IOException;
import java.security.Principal;

import javax.servlet.http.HttpServletResponse;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nibm.model.OrderDetail;
import com.nibm.model.OrderDetailRepo;
import com.nibm.model.OrderHead;
import com.nibm.model.OrderHeadRepo;
import com.nibm.model.Product;
import com.nibm.model.User;
import com.nibm.model.UserRepo;
import com.nibm.model.cart;
import com.nibm.repo.CartRepo;
import com.nibm.repo.ProductRepo;
import com.nibm.security.UserPrincipal;

@Controller
public class HomeController {

	@Autowired
	private ProductRepo prodRepo;
	@Autowired
	private CartRepo cartRepo;
	
	//fazil
	@Autowired
	OrderHeadRepo orhd_repo;

	@Autowired
	OrderDetailRepo ordet_repo;
	
	@Autowired
	UserRepo user_repo;
	

	
	
	@RequestMapping("/home")
	public String home(ModelMap modelmap)
	{
		prodRepo.findAll();
		modelmap.put("product", prodRepo.findAll());
		return "home.jsp";		
	}
	
	@RequestMapping("/search")
	public String search(@PathParam("genreSelect") String genre, @PathParam("txt_search") String searchtxt, ModelMap modelmap) 
	{
	    
		System.out.print(genre);
		
		if ((genre == "") && (searchtxt.isEmpty())) {
			
			modelmap.put("product", prodRepo.findAll());
		}
		
		if ((genre == "") && (!searchtxt.isEmpty())) {
			 System.out.print(genre);
			prodRepo.findByName(searchtxt);
			modelmap.put("product", prodRepo.findByName(searchtxt));
			
		
		}
		 else if((genre != "") && (!searchtxt.isEmpty())) {
		  		prodRepo.findByNameGenre(searchtxt, genre);
	      		modelmap.put("product", prodRepo.findByNameGenre(searchtxt, genre));
				
			}
		 
		 else if((genre != "") && (searchtxt.isEmpty())) {
			prodRepo.findByGenre(genre);
			modelmap.put("product", prodRepo.findByGenre(genre));
			
		}
		
		 return "search.jsp";	
	}
	
	@RequestMapping("/productview")
	public String productview(@PathParam("prod_id") int prod_id, ModelMap modelmap, cart cart, Principal uprinc)
	{
		
		User user = user_repo.findByUsername(uprinc.getName());
		if(cartRepo.existCart(prod_id, user.getUid()) != null) {
			return "/cartAdded";
		}
		else {
			prodRepo.myFindById(prod_id);
			modelmap.put("product", prodRepo.myFindById(prod_id));
			return "productview.jsp";
		}		
	}
	
	@RequestMapping("/cartAdded")
	public String cartAdded(@PathParam("prod_id") int prod_id, ModelMap modelmap, cart cart, Principal uprinc)
	{
		User user = user_repo.findByUsername(uprinc.getName());
		cart.setUid(user.getUid());
		cartRepo.save(cart);
		modelmap.put("product", prodRepo.myFindById(prod_id));
		return "cartAdded.jsp";
		
		
	}
	/*
	@RequestMapping("/userHeader")
	public String userHeader() {
		return "UserHeader.jsp";
	}*/
	
	//fazil
	@RequestMapping("/admin")
	public String adminHome() {
		return "adminHome.jsp";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login.jsp";
	}
	
	@RequestMapping("/signup")
	public String signup() {
		return "signup.jsp";
	}
	
	@RequestMapping("/adminOrders")
	public String viewOrders(ModelMap modelmap) {
		modelmap.put("orders", orhd_repo.findNonshipped());
		
		return "adminViewOrders.jsp";
	}
	
	@RequestMapping("/adminShippedOrder")
	public String viewShippedOrders(ModelMap modelmap) {
		modelmap.put("orders", orhd_repo.findShipped());	
		return "adminShippedOrders.jsp";
	}
	
	@RequestMapping("/adminEditOrder")
	public String viewOrders(@PathParam("id") int id, ModelMap modelmap) {
		modelmap.put("orderDetails", ordet_repo.MyFindById(id));
		modelmap.put("order", orhd_repo.MyFindById(id));
		return "adminEditOrder.jsp";
	}
	
	@PostMapping("/orderShipped")
	public void orderShip(OrderHead order, HttpServletResponse res) {
		
		orhd_repo.save(order);
		try {
			res.sendRedirect("/adminOrders");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@PostMapping("/saveUser")
	public String saveUser(User user)
	{
		user.setRole("USER");
		user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
		user_repo.save(user);
		UserPrincipal up = new UserPrincipal(user);
		UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(up, user.getPassword(), up.getAuthorities());
		if (token.isAuthenticated())
			SecurityContextHolder.getContext().setAuthentication(token);
		return "/home";
	}
	
	@RequestMapping("/adminHeader")
	public String adminHeader() {
		return "adminHeader.jsp";
	}
	
	//Eshan
	@RequestMapping("/prod")
	public String addProd()
	{
		return "addProduct.jsp";
	}
	
	@RequestMapping("/saveProduct")
	public String saveProd(Product prod)
	{
		
		prodRepo.save(prod);
		return "/admin";
	}
	@RequestMapping("/update")
	public String updateProd()
	{
		return "updateProduct.jsp";
	}
	@RequestMapping("/searchProd")
	public String searchProd()
	{
		return "searchProduct.jsp";
	}
	@RequestMapping("/searchProduct")
	public String editProd(@PathParam("id") int id, ModelMap modelmap)
	{
		
		modelmap.put("prod", prodRepo.myFindById(id));
		return "updateProduct.jsp";
	}
	@PostMapping("/updateProduct")
	public String updateProduct(Product prod)
	{
		prodRepo.save(prod);
		return "/admin";
	}
	
	//sam
	@RequestMapping("/cart")
	public String cart(ModelMap modelmap, Principal uprinc)
	{
		User user = user_repo.findByUsername(uprinc.getName());
		prodRepo.findAll();
		modelmap.put("product", prodRepo.findByCart(user.getUid()));
		return "cart.jsp";
	}
	
	@RequestMapping("/addOrderConfirm")
	public String addOrder(OrderDetail orderdet) 
	{
		
		ordet_repo.save(orderdet);
		cartRepo.deleteAll();
		return "/home";
	}
	
	@RequestMapping("/removecart")
	public String removecart(cart ca, Principal uprinc) 
	{
		User user = user_repo.findByUsername(uprinc.getName());
		ca.setUid(user.getUid());
		cartRepo.delete(ca);
		return "/cart";
	}
	
	
}
