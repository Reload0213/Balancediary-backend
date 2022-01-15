package com.balancediary.personalization.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class psnalController {
	
	@GetMapping("personalization")
	public String movePsnalPage() {
		
		return "personalization";
	}
}
