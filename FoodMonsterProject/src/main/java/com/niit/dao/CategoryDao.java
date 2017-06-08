package com.niit.dao;

import java.util.List;
import com.niit.model.Category;

public interface CategoryDao 
{
	void saveOrUpdateCategory(Category category);

	List<Category> getAllCategorys();

	Category getCategoryById(int cid);

	void deleteCategory(int cid);
}