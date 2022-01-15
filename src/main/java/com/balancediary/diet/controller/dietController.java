package com.balancediary.diet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
// @RequestMapping("/diet")
public class dietController {

	@GetMapping("lean-mass-up")
	public String moveLmpPage() {
		
		return "lean-mass-up";
	}
	
	@GetMapping("diet")
	public String moveDietPage() {
		
		return "diet";
	}
	
	@GetMapping("bulk-up")
	public String moveBulkUpPage() {
		
		return "bulk-up";
	}
}
