package com.cook.talk.model.VO;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class TalkVO {

	private String talkCode;
	private String talkCont;
	private Date talkDate;
	private String talkVideo;
	private int talkLikeS;
	private int talkComS;
}
