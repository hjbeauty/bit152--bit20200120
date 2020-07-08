package com.cook.talk.model.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cook.talk.model.VO.RecipeVO;

@Service
public interface AdRecipeDAO {

	public List<RecipeVO> allSelectRecipe();
	
	public void updateRecipe(RecipeVO rcpUpdate);

}
