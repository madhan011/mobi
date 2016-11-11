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
		try{
		if(pm.getQuantity() != 0)
		{
				pm.setQuantity(pm.getQuantity()-cartquantity);
		}
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		ps.edit(pm);
	}


	public void addproctquantity(int getprdit, int delquan) {

		ProductModel pm = ps.getProductModel(getprdit);
		pm.setQuantity(pm.getQuantity()+delquan);
		ps.edit(pm);
	}

}
