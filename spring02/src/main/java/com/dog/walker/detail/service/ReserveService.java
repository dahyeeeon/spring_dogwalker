package com.dog.walker.detail.service;

import javax.servlet.http.HttpServletRequest;

import com.dog.walker.detail.dto.ReserveDto;


public interface ReserveService {
	public void getList(HttpServletRequest request);
	public void insert(HttpServletRequest request, ReserveDto dto);
	public void update(HttpServletRequest request);
	public void updateform(HttpServletRequest request);
	public void delete(HttpServletRequest request, int num);
	public void getData(HttpServletRequest request);
	
}
