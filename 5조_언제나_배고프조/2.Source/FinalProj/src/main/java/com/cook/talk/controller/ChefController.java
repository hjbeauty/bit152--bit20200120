package com.cook.talk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ChefController {

	@PostMapping("/chefRank")
	public String chefRank() {
		return "/chefRank";
	}
	
	@PostMapping("/chefInfo")
	public String chefInfo() {
		
		return"/chefInfo";
	}
}
