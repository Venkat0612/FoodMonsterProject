 package com.niit.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.niit.dao.CategoryDao;
import com.niit.model.Category;

@Service
public class CategoryServiceImpl implements CategoryService 
{
	@Autowired
	private CategoryDao categoryDao;
	
	public void saveOrUpdateCategory(Category category) 
	{
		categoryDao.saveOrUpdateCategory(category);
	}
	public List<Category> getAllCategorys() 
	{
		return categoryDao.getAllCategorys();
	}
	public Category getCategoryById(int cid) 
	{
		return categoryDao.getCategoryById(cid);
	}
	public void deleteCategory(int cid) 
	{
		categoryDao.deleteCategory(cid);
	}
}