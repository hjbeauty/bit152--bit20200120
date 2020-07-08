package com.cook.talk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MainController {

	
	@PostMapping("/index")
	public String index() {
		return "/index";
	}
	@PostMapping
	public String loginIndex() {
		return "/loginIndex";
	}
	
}
