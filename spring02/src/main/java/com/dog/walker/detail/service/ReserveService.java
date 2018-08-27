package com.dog.walker.detail.service;

import javax.servlet.http.HttpServletRequest;

import com.dog.walker.manage.dto.ManageDto;


public interface ReserveService {
	public void getList(HttpServletRequest request);
	public void reservationinsert(HttpServletRequest request, ManageDto dto);
	public void update(HttpServletRequest request);
	public void updateform(HttpServletRequest request);
	public void delete(HttpServletRequest request, int num);
	public void getData(HttpServletRequest request);
	
	
}
