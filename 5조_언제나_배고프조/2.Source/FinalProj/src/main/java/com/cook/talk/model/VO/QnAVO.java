package com.cook.talk.model.VO;

import java.sql.Date;

import lombok.Data;

@Data
public class QnAVO {

	private String qnaTitle;
	private String qnaCont;
	private Date qnaDate;
	private String answer;
}
