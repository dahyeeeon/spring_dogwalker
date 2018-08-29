package com.dog.walker.profile.service;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.dog.walker.manage.dto.ManageDto;

public interface WalkerProfileService {
	public void profileinsert(HttpServletRequest request,ModelAndView mView, ManageDto dto);
	public void check(HttpServletRequest request,ModelAndView mView);
	public void profileupdate(ManageDto dto);
	public void profileupdateForm(ModelAndView mView, HttpSession session);
	
}




