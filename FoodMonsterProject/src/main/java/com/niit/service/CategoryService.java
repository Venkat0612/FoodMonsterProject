package com.niit.service;

import java.util.List;
import com.niit.model.Category;

public interface CategoryService 
{
	void saveOrUpdateCategory(Category category);

	List<Category> getAllCategorys();

	Category getCategoryById(int cid);

	void deleteCategory(int cid);
}