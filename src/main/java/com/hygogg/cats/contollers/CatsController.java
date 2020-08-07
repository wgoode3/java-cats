package com.hygogg.cats.contollers;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CatsController {

	@RequestMapping("/")
	public String index(Model model, HttpSession session) {
		String[] cats = new String[] {
			"Garfield",
			"Doraemon",
			"Sassy",
			"Grumpycat"
		};
		model.addAttribute("cats", cats);
		System.out.println(session.getAttribute("cat"));
		model.addAttribute("catOfTheDay", session.getAttribute("cat"));
		return "index.jsp";
	}
	
	@RequestMapping("/addcat")
	public String addCat(@RequestParam Map<String, String> body, HttpSession session ) {
		System.out.println("inside of add cat");
		System.out.println(body);
		session.setAttribute("cat", body.get("name"));
		return "redirect:/";
	}
	
}
