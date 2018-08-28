package com.dog.walker.detail.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dog.walker.manage.dao.ManageDao;
import com.dog.walker.manage.dto.ManageDto;
import com.dog.walker.petwalker.dao.PetwalkerDao;
import com.gura.spring03.cafe.dto.CafeCommentDto;
import com.gura.spring03.cafe.dto.CafeDto;

@Service
public class ReserveServiceImpl implements ReserveService {
	@Autowired
	private ManageDao dao;

	@Autowired
	private PetwalkerDao petdao;

	@Override
	public void getList(HttpServletRequest request) {
		String selectDate = request.getParameter("selectDate");
		String timeSlot = request.getParameter("timeSlot");

		ManageDto dto = new ManageDto();
		dto.setSelectDate(selectDate);
		dto.setTimeSlot(timeSlot);

		List<ManageDto> rsvlist = dao.reservegetList(dto);

		request.setAttribute("rsvlist", rsvlist);

	}

	@Override
	public void reservationinsert(HttpServletRequest request, ManageDto dto) {
		// String id=(String)request.getSession().getAttribute("id");
		// String kakao=(String)request.getSession().getAttribute("kakao");
		String id = request.getParameter("id");
		String kakao = request.getParameter("kakao");
		String nickname = request.getParameter("nickname");
		String dogSize = request.getParameter("dogSize");
		String selectDate = request.getParameter("selectDate");
		String timeSlot = request.getParameter("timeSlot");
		String cctv = request.getParameter("cctv");

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
		int num = Integer.parseInt(request.getParameter("num"));
		String dogSize = request.getParameter("dogSize");
		String selectDate = request.getParameter("selectDate");
		String timeSlot = request.getParameter("timeSlot");
		String cctv = request.getParameter("cctv");
		// 담기
		ManageDto dto = new ManageDto();
		dto.setDogSize(dogSize);
		dto.setSelectDate(selectDate);
		dto.setTimeSlot(timeSlot);
		dto.setCctv(cctv);

		dao.update(dto);

	}

	@Override
	public void updateform(HttpServletRequest request) {
		int num = Integer.parseInt(request.getParameter("num"));
		ManageDto dto = new ManageDto();
		dto.setNum(num);
		;
		ManageDto updateDto = dao.getData(num);
		request.setAttribute("dto", updateDto);

	}

	@Override
	public void delete(HttpServletRequest request, int num) {
		num = Integer.parseInt(request.getParameter("num"));
		dao.delete(num);

	}

	

	@Override
	public void reviewgetList(HttpServletRequest request) {
		
		ManageDto dto=new ManageDto();
				
		//1. FileDto 객체를 전달해서 파일 목록을 불러온다 
		List<ManageDto> list=dao.rgetList(dto);
		
		//2. request 에 담고
		request.setAttribute("list", list);
	}

	@Override
	public void pwkList(HttpServletRequest request) {
		ManageDto dto=new ManageDto();
		
		List<ManageDto> pwklist=dao.pwkList(dto);
		
		request.setAttribute("pwklist", pwklist);
		
	}

	@Override
	public void detail(HttpServletRequest request, ModelAndView mView, String nickname) {
		List<ManageDto> detail = dao.DtgetList(nickname);
		mView.addObject("detail",detail);
		
	}

	
	

}
