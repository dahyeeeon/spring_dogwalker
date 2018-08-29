package com.dog.walker.review.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.dog.walker.manage.dto.ManageDto;




public interface ReviewService {
	public void upload(HttpServletRequest request, ModelAndView mView, ManageDto dto);
	
	public void reviewgetList(HttpServletRequest request);
	public void reviewpetwalkergetList(HttpServletRequest request);
}
