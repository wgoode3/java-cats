package com.hygogg.cats.contollers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CatsController {

	@RequestMapping("/")
	public String index(Model model) {
		String[] cats = new String[] {
			"Garfield",
			"Doraemon",
			"Sassy",
			"Grumpycat"
		};
		model.addAttribute("cats", cats);
		return "index.jsp";
	}
	
}
