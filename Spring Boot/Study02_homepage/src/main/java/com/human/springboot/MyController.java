package com.human.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MyController {
	
	@RequestMapping("/")
	public String doHome(HttpServletRequest req, Model model) {
//		HttpSession session = req.getSession();
//		String sess_info = (String) session.getAttribute("gUserid");
//		
//		model.addAttribute("userid", sess_info);
		return "home";
	}
	
	@RequestMapping ("/login") 
	public String doLogin() {
		return "login";
	}
	
	@RequestMapping("/checkUser")
	public String doCheckUser(HttpServletRequest req, Model model) {
		String loginId = req.getParameter("userid");
		String pw = req.getParameter("passcode");
		
		HttpSession session = req.getSession(); 	// 초기화
		session.setAttribute("gUserid", loginId);	// 값 설정.
		
		return "redirect:/";
		
//		model.addAttribute("uid", loginId);
//		model.addAttribute("pwc", pw);
//		return "loginOk";
	}
	
	@RequestMapping("/signIn")
	public String doSignIn() {
		return "signIn";
	}
	
	@RequestMapping("/viewUser")
	public String doviewUser(HttpServletRequest req, Model model) {
		String newLoginId = req.getParameter("newId");
		String newPw = req.getParameter("newPasscode");
		String newName = req.getParameter("name");
		String newMobile = req.getParameter("mobile");
		
		model.addAttribute("newUid", newLoginId);
		model.addAttribute("newPwc", newPw);
		model.addAttribute("newName", newName);
		model.addAttribute("newMobile", newMobile);
		
		return "userInfo";
	}
	
	@RequestMapping("/signOut")
	public String doSignout(HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate();		// 모든 세션변수를 제거.
		
		return "redirect:/";
	}
	

}
