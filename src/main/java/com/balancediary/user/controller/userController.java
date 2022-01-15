package com.balancediary.user.controller;

import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.balancediary.user.service.userService;
import com.balancediary.user.vo.userVO;

@Controller
public class userController {

	@Autowired
	userService userService = new userService();

	@GetMapping("isLogin")
	public String isLogin(HttpServletRequest request, HttpSession session) {
		
		String referer = request.getHeader("Referer");
		String path = referer.substring(21, referer.length());
		StringTokenizer st = new StringTokenizer(path, "/");
		
			path = st.nextToken();
			path = st.nextToken();
		
		session.setAttribute("path", path);
		return "login";
	}
	
	@RequestMapping("login")
	public String isLogin(userVO vo, HttpSession session) {
			return userService.login(vo, session);
	}

	@GetMapping("isSignup")
	public String isSignUp() {

		return "signUp";
	}
	
	@PostMapping("signup")
	public String signUp(userVO vo) {
		userService.setUser(vo);
		
		return "login";
	}

	@GetMapping("logout")
	public String logoutMainGET(HttpServletRequest request) throws Exception{
        HttpSession session = request.getSession();
        String referer = request.getHeader("Referer");
		String path = referer.substring(21, referer.length());
		StringTokenizer st = new StringTokenizer(path, "/");		
		while (st.hasMoreTokens()) {
			path = st.nextToken();
		}
        session.invalidate();
        
        return "redirect:/"+path;        
        
    }
	
}
