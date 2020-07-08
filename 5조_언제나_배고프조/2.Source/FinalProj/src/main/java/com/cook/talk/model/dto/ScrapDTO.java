package com.cook.talk.model.dto;

import java.sql.Date;

import com.cook.talk.model.VO.UserVO;

import lombok.Data;

@Data
public class ScrapDTO {

	private UserVO user;
	private Date scrap;
}
