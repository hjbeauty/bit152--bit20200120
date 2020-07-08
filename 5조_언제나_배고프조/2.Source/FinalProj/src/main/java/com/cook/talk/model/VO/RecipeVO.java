package com.cook.talk.model.VO;

import java.sql.Date;
import java.util.List;

import com.cook.talk.model.dto.RecipeDTO;

import lombok.Data;

@Data
public class RecipeVO {

	private String rcpCode;
	private String rcpTitle;
	private String rcpPic;
	private String personnel;
	private String cookTime;
	private String level;
	private Date rcpDate;
	private String video;
	private boolean registerStatus;
	private int rcpViews;
	private String rcpExpl;
	private RecipeDTO typeCat;
}
