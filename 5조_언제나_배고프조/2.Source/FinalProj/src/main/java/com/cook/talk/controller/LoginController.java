package com.cook.talk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {

	@PostMapping("/login")
	public String login() {
		return "/login";
	}
	@PostMapping("/login/find_pw")
	public String find_pw() {
		return "/login";
	}
	@PostMapping("/login/userUpdate")
	public String userUpdate() {
		return "/login";
	}
	@PostMapping("/login/userDelete")
	public String userDelete() {
		return "/login";
	}
	@PostMapping("/login/re_pw")
	public String re_pw() {
		return "/login";
	}
	
}
