package com.balancediary.recommend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class recommendController {
	
	@GetMapping("/recommend")
	public String moveRecommend() {
		
		return "recommend";
	}
	
}
