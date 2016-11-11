package com.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.ProductModel;
import com.model.Review;
import com.service.ProductService;
import com.service.ReviewService;

@Controller
public class Reviewcontrl {

	@Autowired
	ReviewService rvs;

	@Autowired
	CartController cc;
	
	@Autowired
	ProductService productservice;
	
	@ModelAttribute("review")
	public Review addreview()
	{
		return new Review();
	}
	@RequestMapping(value="/viewproduct/{productid}")
	public String view(@PathVariable(value="productid")int id,ProductModel productModel,Map<String, Object>map)
	{
		ProductModel productmodelResult = new ProductModel();
		map.put("navi",productmodelResult);
	    map.put("navilist", productservice.getAllProductModel());
		
		productModel=productservice.getProductModel(id);
		System.out.println("view"+productModel.getName());
		map.put("productModel",productModel);
		List<Review> listofreview=rvs.getallreview(id);
		Review view=new Review();
		map.put("review",view);
		map.put("reviewlist", listofreview);
		//map.put("productmodelList", productModel);
		return 	"productview";
	}
	

	
	@RequestMapping(value="/viewproduct/addreview/{productid}")
	public String addreview(@PathVariable("productid") int prdid,@ModelAttribute Review rvw){
		DateFormat df = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
		// Get the date today using Calendar object.
		// Calendar cal= Calendar.getInstance();
		Date today = Calendar.getInstance().getTime();
		// Using DateFormat format method we can create a string
		// representation of a date with the defined format.
		String reportDate = df.format(today);
		rvw.setReviewdate(reportDate);
		rvw.setPrd_id(prdid);
		String username = cc.onnumilla();
		System.out.println("REVIEWusername"+username);
		rvw.setUsername(username);
		rvs.add(rvw);
		return "redirect:/viewproduct/{productid}";
		
	}
}
