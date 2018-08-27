package com.dog.walker.profile.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.dog.walker.manage.dto.ManageDto;



public interface WalkerProfileService {
	public void profileinsert(MultipartHttpServletRequest request,HttpSession session,ModelAndView mView, ManageDto dto);
	
}
