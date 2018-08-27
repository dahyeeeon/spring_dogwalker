package com.dog.walker.search.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dog.walker.profile.dto.WalkerProfileDto;
import com.dog.walker.search.service.SearchService;


@Controller
public class SearchController {
	
	@Autowired
	private SearchService sService;
	
	
	@RequestMapping("AddressSearchResult")
	public ModelAndView searchForm(ModelAndView mView, WalkerProfileDto profileDto,@RequestParam String input_address) {
		
		sService.getProfile(input_address ,mView);
		sService.findPetWalker(input_address,mView);
		sService.getWalkerTotal(input_address, mView);
		
		
		mView.addObject("input_address",input_address);
		
		
		mView.setViewName("search/searchWalker");
		
		return mView;
	}
}
