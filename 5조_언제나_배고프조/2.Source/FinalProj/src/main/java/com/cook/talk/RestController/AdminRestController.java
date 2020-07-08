package com.cook.talk.RestController;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AdminRestController {

	@PostMapping("/admin/complain")
	public void complain() {
		//insertReply(String UserID);
	}
	@PostMapping("/admin/adUser")
	public void adUser() {
		//deleteUserId(UserDTO userID);
		//searchUserByEmail(UserDTO userEmail);
		//
	}
	@PostMapping("/admin/adRecipe")
	public void adRecipe() {
	}
	@PostMapping("/admin/Ingr")
	public void Ingr() {
	}
	

}
