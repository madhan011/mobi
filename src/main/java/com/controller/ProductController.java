package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.model.ProductModel;
import com.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService ps;
	
	
	public void delproctquantity(int productid,int cartquantity)
	{
		ProductModel pm = ps.getProductModel(productid);
		pm.setQuantity(pm.getQuantity()-cartquantity);
		ps.edit(pm);
	}

}
