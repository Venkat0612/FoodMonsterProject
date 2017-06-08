package com.niit.controllers;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.service.CategoryService;
import com.niit.service.ProductService;

@Controller
public class ProductController 
{
	@Autowired
	private ProductService productService;
	
	@Autowired CategoryService categoryService;
	
	@RequestMapping("/admin/product/productform")
	public String showPage(@ModelAttribute(name="product") Product product,BindingResult bindingResult,Model model)
	{
		model.addAttribute("categoryList", categoryService.getAllCategorys());
		return "productform";
	}	
	
	
	
	/*
	@RequestMapping("admin/product/productform")
	public String getProductForm(Model model)
	{
		model.addAttribute("product",new Product());
		model.addAttribute("categoryList", categoryService.getAllCategorys());
		return "productform";
	}	
	*/
/*	=======================saving product Object=====================================*/
	@RequestMapping(value="admin/product/saveproduct",method = RequestMethod.POST)
	public String saveOrUpdateProduct(@Valid @ModelAttribute(value="product") Product product,BindingResult result,Model model,HttpServletRequest request,@RequestParam CommonsMultipartFile[] fileUpload){
		  if(result.hasErrors()){
			  model.addAttribute("categories",categoryService.getAllCategorys());
			  return "productform";
		  }
		  System.out.println("Saving file: ");
		  
		  for (CommonsMultipartFile aFile : fileUpload){
	          
	          System.out.println("Saving file: " + aFile.getOriginalFilename());
	           product.setPicture(aFile.getBytes());
		  
		  }

			Product produp = productService.saveOrUpdateProduct(product);
		return "redirect:/all/product/productlist";
	}
	
	  @RequestMapping("/all/product/image/{id}")
	  public void imageprocess(@PathVariable int id,HttpServletRequest request,HttpServletResponse response) throws IOException{
		  byte[] image = productService.loadImage(id);
		  response.setContentType("image/png");
		  ServletOutputStream outputStream = response.getOutputStream();
		  outputStream.write(image);
		  outputStream.close();
	  }
	
	/*	=======================Listing product Object=====================================*/
	
	@RequestMapping("/all/product/productlist")
	public String getAllProducts(Model model)
	{
		List<Product> products=productService.getAllProducts();
		for(Product p:products)
		{
			System.out.println(p.getName());
			System.out.println(p.getPrice());
		}
		model.addAttribute("products",products);
		model.addAttribute("categoryList", categoryService.getAllCategorys());
	
		return "productlist";
	}
	
	/*	=======================Listing Individual product Object=====================================*/
	@RequestMapping("/all/product/viewproduct/{id}")
	public String viewProduct(@PathVariable int id,Model model)
	{
		Product product=productService.getProductById(id);
		model.addAttribute("product",product);
		return "viewproduct";
	}
	
/* ================================Edit Individual product object======================================= */
	
	@RequestMapping("/admin/product/editproduct/{id}")
	public String editProduct(@PathVariable int id, Model model)
	{
		Product product=productService.getProductById(id);
		model.addAttribute("product", product);
		List<Category> categoryList=categoryService.getAllCategorys();
		model.addAttribute("categoryList", categoryList);
		return "productform";
	}
	
	/*	=======================Deleting Individual product Object=====================================*/
	@RequestMapping("/admin/product/deleteproduct/{id}")
	public String deleteProduct(@PathVariable int id)
	{
		productService.deleteProduct(id);
		return "redirect:/all/product/productlist";
	}
	@RequestMapping("/all/product/productsByCategory")
	public String getProductsByCategory(@RequestParam(name="searchCondition") String searchCondition,
			Model model,HttpSession session){
	        session.setAttribute("categories",categoryService.getAllCategorys());
		List<Product> products=productService.getAllProducts();
		//Assigning list of products to model attribute products
		model.addAttribute("products",products);
		model.addAttribute("searchCondition",searchCondition);
		return "productlist";
	}

	@RequestMapping("/all/product/getproobj")
	  public @ResponseBody List<Product> getproobj(){
		  List<Product> products = productService.getAllProducts();
		  System.out.println("-------------------hello------------------");
		  return products;
	  }
}