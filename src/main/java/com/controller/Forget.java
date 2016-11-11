package com.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.EmailAPI;
import com.model.Newuser;
import com.model.ProductModel;
import com.service.ProductService;
import com.service.RegisterService;

@Controller
public class Forget {
	
	@Autowired
	RegisterService rs;
	
	@Autowired
	EmailAPI mailtouser;
	
	@Autowired
	ProductService productservice;
	
	@RequestMapping(value="/getforget")
	public String getforget(Map<String,Object> map){
		ProductModel productmodelResult = new ProductModel();
		map.put("navi",productmodelResult);
	    map.put("navilist", productservice.getAllProductModel());
		
		return "ForgetPassword";
	}
	
	@RequestMapping(value="/forget",method=RequestMethod.POST)
	public String forget(@RequestParam("username") String username,@RequestParam("email") String email,ModelMap map)
	{
		List<Newuser> newuser=rs.getuser();
		for(int i=0;i<newuser.size();i++){
		if(newuser.get(i).getEmail().equals(email) && newuser.get(i).getUsername().equals(username)){
				
				String password=newuser.get(i).getPassword();
				try{
					String toAddr = newuser.get(i).getEmail();
					String fromAddr = "1madhankumar1@gmail.com";
			 
					// email subject
					String subject = "Forget Password";
			 
					// email body
					String body = "Welcome to the Mobiaces "+newuser.get(i).getFname()+"."+System.getProperty("line.separator")
							+System.getProperty("line.separator")
							+System.getProperty("line.separator")+"Your Password is:"+password
							+System.getProperty("line.separator")
							+System.getProperty("line.separator")
							+ "------------"+System.getProperty("line.separator")
							+ "-Mobiaces";
					mailtouser.mailmethod(toAddr, fromAddr, subject, body);		
				}
				catch(Exception e){
					System.out.println("MAIL ERROR");
					System.out.println(e.getMessage());
					
				}
				String success="PASSWORD SENT TO YOUR MAIL";
				map.put("Message",success);
				return "ForgetPassword";
		}		
		}
		String mapped="Invalid Credentials";
		map.put("Invalid",mapped);
			return "ForgetPassword";
		}	
}
