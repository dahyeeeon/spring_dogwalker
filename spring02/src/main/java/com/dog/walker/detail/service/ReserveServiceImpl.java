package com.dog.walker.detail.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dog.walker.detail.dao.ReserveDao;
import com.dog.walker.detail.dto.ReserveDto;
import com.dog.walker.petwalker.dao.PetwalkerDao;

@Service
public class ReserveServiceImpl implements ReserveService{
	@Autowired
	private ReserveDao dao;
	
	@Autowired
	private PetwalkerDao petdao;

	@Override
	public void getList(HttpServletRequest request) {
		String selectDate=request.getParameter("selectDate");
		String timeSlot=request.getParameter("timeSlot");
		
		ReserveDto dto= new ReserveDto();
		dto.setSelectDate(selectDate);
		dto.setTimeSlot(timeSlot);
		
		List<ReserveDto> list= dao.getList(dto);
		
		request.setAttribute("list", list);
		
	}

	@Override
	public void insert(HttpServletRequest request, ReserveDto dto) {
		//String id=(String)request.getSession().getAttribute("id");
		//String kakao=(String)request.getSession().getAttribute("kakao");
		String id=request.getParameter("id");
		String kakao=request.getParameter("kakao");
		String nickname=request.getParameter("nickname");
		String dogSize=request.getParameter("dogSize");
		String selectDate=request.getParameter("selectDate");
		String timeSlot=request.getParameter("timeSlot");
		String cctv=request.getParameter("cctv");
		
		dto.setId(id);
		dto.setKakao(kakao);
		dto.setNickname(nickname);
		dto.setDogSize(dogSize);
		dto.setSelectDate(selectDate);
		dto.setTimeSlot(timeSlot);
		dto.setCctv(cctv);
		
		dao.insert(dto);
		
	}

	@Override
	public void update(HttpServletRequest request) {
		int num=Integer.parseInt(request.getParameter("num"));
		String dogSize=request.getParameter("dogSize");
		String selectDate=request.getParameter("selectDate");
		String timeSlot=request.getParameter("timeSlot");
		String cctv=request.getParameter("cctv");
		//담기
		ReserveDto dto=new ReserveDto();
		dto.setDogSize(dogSize);
		dto.setSelectDate(selectDate);
		dto.setTimeSlot(timeSlot);
		dto.setCctv(cctv);
		
		dao.update(dto);
		
		
	}

	@Override
	public void updateform(HttpServletRequest request) {
		int num=Integer.parseInt(request.getParameter("num"));
		ReserveDto dto=new ReserveDto();
		dto.setNum(num);;
		ReserveDto updateDto=dao.getData(num);
		request.setAttribute("dto", updateDto);
		
	}

	@Override
	public void delete(HttpServletRequest request, int num) {
		num=Integer.parseInt(request.getParameter("num"));
		dao.delete(num);
		
	}

	@Override
	public void getData(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
	}
	


}
