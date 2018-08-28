package com.dog.walker.profile.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.dog.walker.manage.dto.ManageDto;

public interface WalkerProfileService {
   public void profileinsert(HttpServletRequest request,ModelAndView mView, ManageDto dto);

}