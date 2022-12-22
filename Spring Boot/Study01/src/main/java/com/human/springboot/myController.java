package com.human.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class myController {
	
	@RequestMapping("/")
	public String doRoot() {
		return "index";
	}
	
	@RequestMapping("/addMember")
	public String doAddMember(Person p, Model model) {
		System.out.println(p.getName());
		System.out.println(p.getLoginid());
		System.out.println(p.getPasscode());
		System.out.println(p.getMobile());
		
		model.addAttribute("person", p);
		return "showMember";
	}

}
