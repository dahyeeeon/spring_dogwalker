package com.dog.walker.search.service;

import org.springframework.web.servlet.ModelAndView;



public interface SearchService {
   public void findPetWalker(String input_address,ModelAndView mView);
   public void getProfile(String input_address, ModelAndView mView);
   public void getWalkerTotal(String input_address, ModelAndView mView);
   public void getStars(String input_address,ModelAndView mView);
   
}