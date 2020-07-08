package com.cook.talk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TalkController {

	@PostMapping("/talk/talkInsert")
	public String talkInsert() {
		
		return "/talk";
	}
	@PostMapping("/talk/talkDelete")
	public String talkDelete() {
		
		return "/talk";
	}
	@PostMapping("/talk/talkUpdate")
	public String talkUpdate() {
		
		return "/talk";
	}
	@PostMapping("/talk/comInsert")
	public String comInsert() {
		
		return "/talkCom";
	}
	@PostMapping("/talk/comDelete")
	public String comDelete() {
		
		return "/talkCom";
	}
	@PostMapping("/talk/talkList")
	public String talkList() {
		
		return "/talkCom";
	}
	@PostMapping("/talk/talkSearch")
	public String talkSearch() {
		
		return "/talk";
	}
	
	
}
