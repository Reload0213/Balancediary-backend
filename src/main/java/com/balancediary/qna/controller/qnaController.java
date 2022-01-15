package com.balancediary.qna.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class qnaController {
	
	@GetMapping("q&a")
	public String moveQna() {
		
		return "q&a";
	}
	
}
