package com.mobitel.mtktweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.mobitel.mtktweb.entity.SearchInfoEntity;

@Controller
public class SearchController {	
	@GetMapping("/index")
	public String showSearchPage(Model model) {
		System.out.println("|MTKTWEB SEARCH GET CNTRL|");
//		model.addAttribute("searchInfo", new SearchInfoEntity());
		return "index";
	}
}
