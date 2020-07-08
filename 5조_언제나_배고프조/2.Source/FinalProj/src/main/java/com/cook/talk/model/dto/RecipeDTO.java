package com.cook.talk.model.dto;

import java.util.List;

import com.cook.talk.model.VO.RcpCatVO;
import com.cook.talk.model.VO.RcpComVO;
import com.cook.talk.model.VO.RcpIngrVO;
import com.cook.talk.model.VO.RcpOrderVO;
import com.cook.talk.model.VO.RecipeVO;

import lombok.Data;

@Data
public class RecipeDTO {

	private RcpOrderVO recipeOrder;
	private RecipeVO recipe;
	private List<RcpIngrVO> recipeIngr;
	private List<RcpComVO> recipeCom;
	private List<String> tag;
	private UserDTO user;
	private RcpCatVO recipeCat;
}
