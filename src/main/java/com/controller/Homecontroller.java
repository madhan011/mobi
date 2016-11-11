package com.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.ProductModel;
import com.service.ProductService;
import com.service.RegisterService;

@Controller
public class Homecontroller {
	//@Autowired
	//LoginService ls;
	@Autowired
	RegisterService rs;
	
	@Autowired
	ProductService productservice;

	@RequestMapping(value ={"/","/home"})
	public String home(Map<String, Object>map) {

		ProductModel productmodelResult = new ProductModel();
		map.put("productModel",productmodelResult);
	    map.put("productmodelList", productservice.getAllProductModel());
	    
		return "index";
	}
	
	@RequestMapping(value="/admin/one")
	public String valid()
	{
		return "Admin";
	}
	

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView getlogin(ModelMap map,@RequestParam(value="error",required=false) String error,@RequestParam(value="logout",required=false) String logout) {
		ModelAndView mv=new ModelAndView("Login");
		ProductModel productmodelResult = new ProductModel();
		map.put("navi",productmodelResult);
	    map.put("navilist", productservice.getAllProductModel());
		if(error!=null){
			//String eror="Please check username or password !!.";
		mv.addObject("error","Please check username or password !!.");
		}
		else if(logout!=null){
		//	String eror="Your are Logout Sucessfully!!.";
			mv.addObject("error","Your are Logout Sucessfully!!.");
		}
		return mv;
	}

	@RequestMapping(value="/contactus")
	public String  contact(Map<String, Object>map)
	{
		ProductModel productmodelResult = new ProductModel();
		map.put("navi",productmodelResult);
	    map.put("navilist", productservice.getAllProductModel());
		
		return "Contactus";
		
	}
	@RequestMapping(value="p001")
	public String p1(){
		return "p001";
	}
	@RequestMapping(value = "/headphones")
	public String cat1() {
		return "Headphones";
	}
/*	@ModelAttribute("Reg")
	public Newuser getNewuser() {
		return new Newuser();
	}	@RequestMapping(value = "/register")
	public String gtReg() {
		return "rs";
	}

	@RequestMapping(value = "/fregister", method = RequestMethod.POST)
	public ModelAndView reguser(@ModelAttribute("Reg") Newuser newuser) {
		System.out.println(newuser);
		rs.s(newuser);	
		ModelAndView mc =new ModelAndView("login");
		return mc;	
	}
*/
}
