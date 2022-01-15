package com.balancediary.apptester.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class appTesterController {
	
	@GetMapping("appTester")
	public String appTester() {
		
		return "appTester";
	}
}
