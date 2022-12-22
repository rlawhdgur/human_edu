package com.human.springboot;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MyController {
	
//	@RequestMapping("/test1")	// web browser에서 "/"를 입력하면
//	public String test1(Model model) {
//		model.addAttribute("myName", "김종혁"); 
//		// myname이라는 이름의 attribute에 들어가는 데이터는 "김종혁"이라는 문자열.
//		model.addAttribute("others", "장영민");
//		return "test1";		// web browser에게 "test1.jsp"를 보내준다.
//	}						// test1은 jsp file 이름.
	
	@RequestMapping("/test1")	// web browser에서 "/"를 입력하면
	public String test1(Model model) {
		ArrayList<String> arName = new ArrayList<String>();
		arName.add("Latte");
		arName.add("Mocca");
		arName.add("Americano");
		arName.add("Cappuccino");
		model.addAttribute("menu", arName);
		return "test1";		// web browser에게 "test1.jsp"를 보내준다.
	}						// test1은 jsp file 이름.
	
//	@RequestMapping("/test1")	
//	public ModelAndView test1() {
//		ModelAndView mv = new ModelAndview();
//		mv.addObject("attrname", "data");
//		mv.setViewName("jspfilename")
//		return mv;
//	}						
	
	@RequestMapping("/login")
	public String doLogin() {
		return "login";
	}
	
	@RequestMapping("/checkuser")
	public String doCheckUser(HttpServletRequest req, Model model) {
		String loginid = req.getParameter("userid");	// "userid"는 jsp파일에 있는 name명.
		String pw = req.getParameter("passcode");	// "passcode"는 jsp파일에 있는 name명.
	
	// @RequestParam 문법.
//	public String doCheckUser(@RequestParam("userid") String loginid,
//							  @RequestParam("passcode") String pw, Model model) {
		
		// log, debug code.
//		System.out.println("loginid : " + loginid);
//		System.out.println("password: " + pw);
		
		if(loginid.equals("rlawhdgur")) {
			model.addAttribute("uid", loginid);
			model.addAttribute("pwd", pw);
			return "userinfo";
		}
		else {
//			return "login";
			return "redirect:/login";	// redirect: URL이 "/login"이라는 곳을 가서 내용을 실행함.
		}
	}
	
	@RequestMapping("/signin")
	public String doSingin() {
		return "register";
	}
	
	@RequestMapping("/logout")
	public String doLogout() {
		return "logout";
	}
	
	@RequestMapping("/name")
	@ResponseBody
	public String doName() {
		return "<h1>서울 영등포구 영중로4길6</h1>";	// 단순문자열, No more JSP.
	}
	
	@RequestMapping("/plus")
	public String doPlus() {
		return "plus";
	}
	
	@RequestMapping("/doplus")
	public String asDoPlus(HttpServletRequest req, Model model) {
		String a = req.getParameter("aText");
		String b = req.getParameter("bText");
		int c = Integer.parseInt(req.getParameter("aText"))
				+ Integer.parseInt(req.getParameter("bText"));
		
		
//		model.addAttribute("resultA", a);
//		model.addAttribute("resultB", b);
		model.addAttribute("resultC", c);
		
		return "/doplus";
	}
	
	@RequestMapping("/dan")
	public String doDan() {
		return "dan";
	}
	
	@RequestMapping("/dodan")
	public String asDoDan(HttpServletRequest req, Model model) {
	
		int a = Integer.parseInt(req.getParameter("nDan"));
		String danStr="";
		
		for (int i=1; i<10; i++) {
			danStr += a + " x " + i + " = " + (a*i) + "<br>";
		}
		
		model.addAttribute("resultDan", danStr);
		
		return "dodan";
	}

}
