package com.dog.walker.search.service;

import org.springframework.web.servlet.ModelAndView;

import com.dog.walker.profile.dto.WalkerProfileDto;

public interface SearchService {
	public void findPetWalker(String input_address,ModelAndView mView);
	public void getProfile(String input_address, ModelAndView mView);
	public void getWalkerTotal(String input_address, ModelAndView mView);
}
