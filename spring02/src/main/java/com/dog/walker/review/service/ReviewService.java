package com.dog.walker.review.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.dog.walker.review.dto.ReviewDto;



public interface ReviewService {
	public void upload(HttpServletRequest request, ModelAndView mView, ReviewDto dto);
	
	public void getList(HttpServletRequest request);
}
