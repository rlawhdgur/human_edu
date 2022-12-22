package com.human.springboot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MyController {
	
	@Autowired
	private MemberDAO mb;
	
	@RequestMapping("/")
	public String doHome(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		String sess_info = (String) session.getAttribute("gUserid");
		
		model.addAttribute("userid", sess_info);
		return "home";
	}
	
	@RequestMapping ("/login") 
	public String doLogin() {
		
		return "login";
	}
	
	@RequestMapping("/checkUser")
	public String doCheckUser(HttpServletRequest req, Model model) {
		String loginId = req.getParameter("userId");
		String pw = req.getParameter("passcode");
		int cnt = mb.getMemberCount(loginId, pw);
		
		if(cnt == 1) {
			HttpSession session = req.getSession(); 	// 초기화
			session.setAttribute("lUserid", loginId);	// 값 설정.
			return "redirect:/";
		}
		else {
			return "redirect:/login";
			
		}
		
//		HttpSession session = req.getSession(); 	// 초기화
//		session.setAttribute("gUserid", loginId);	// 값 설정.
		
		// Mybatis select call 
//		mb.getMemberCount(loginId, pw);
		

		
//		model.addAttribute("uid", loginId);
//		model.addAttribute("pwc", pw);
//		return "loginOk";
	}
	
	@RequestMapping("/signIn")
	public String doSignIn() {
		return "signIn";
	}
	
	@RequestMapping("/viewUser")
	public String doViewUser(HttpServletRequest req) {
		String newId = req.getParameter("newId");
		String newPasscode = req.getParameter("newPasscode");
		String name = req.getParameter("name");
		String mobile = req.getParameter("mobile");
		
		mb.insertMember(newId, newPasscode, name, mobile);
		
		// Mybatis insert call
		
		return "login";
	}
	
	@RequestMapping("/signOut")
	public String doSignout(HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate();		// 모든 세션변수를 제거.
		
		return "redirect:/";
	}

}