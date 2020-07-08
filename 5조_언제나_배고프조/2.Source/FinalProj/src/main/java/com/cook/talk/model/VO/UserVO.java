package com.cook.talk.model.VO;

import java.sql.Date;

import lombok.Data;

@Data
public class UserVO {

	private String userId;
	private String userPw;
	private String nickName;
	private Date birth;
	private boolean gender;
	private boolean access;
	private String userPic;
	private int rcpUploads; 
	}
