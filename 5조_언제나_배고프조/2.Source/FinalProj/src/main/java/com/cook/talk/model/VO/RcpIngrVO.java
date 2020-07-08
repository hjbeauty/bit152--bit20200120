package com.cook.talk.model.VO;

import java.util.List;

import lombok.Data;

@Data
public class RcpIngrVO {

	private String connectCode;
	private String ingrCat;
	private String userIngr;
	private String ingrWeigh;
	private List<IngrVO> ingr;
}
