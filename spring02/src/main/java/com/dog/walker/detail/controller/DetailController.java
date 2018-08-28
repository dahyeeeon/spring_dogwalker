package com.dog.walker.detail.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dog.walker.detail.service.ReserveService;
import com.dog.walker.manage.dto.ManageDto;
import com.dog.walker.review.service.ReviewService;

@Controller
public class DetailController {
	@Autowired
	private ReserveService rsvService;
	@Autowired
	private ReviewService rvService;
	
	@RequestMapping("/walkerPrf/insertform")
	public ModelAndView insertform(HttpServletRequest request) {
		return new ModelAndView("walkerPrf/insertform");
	} 
	
	@RequestMapping("/walkerPrf/insert")
	public ModelAndView insert(HttpServletRequest request, ManageDto dto) {
		rsvService.reservationinsert(request, dto);
		return new ModelAndView("walkerPrf/insert");
	}
	
	
	@RequestMapping("/walkerPrf/detail_main")
	public ModelAndView dMain(HttpServletRequest request) {
		rsvService.getList(request);
		rsvService.reviewgetList(request);
		return new ModelAndView("walkerPrf/detail_main");
	}
	
	@RequestMapping("/walkerPrf/delete")
	public ModelAndView delete(HttpServletRequest request, @RequestParam int num) {
		rsvService.delete(request, num);
		return new ModelAndView("walkerPrf/delete");
	}
	
	@RequestMapping("/walkerPrf/update")
	public ModelAndView update(HttpServletRequest request) {
		ModelAndView mView=new ModelAndView();
		rsvService.update(request);
		mView.setViewName("redirect:/walkerPrf/detail_main.jsp");
		//redirect:/walkerPrf/detail.do?num="dto.num();
		return mView;
	}
	
	@RequestMapping("/walkerPrf/updateform")
	public ModelAndView updateform(HttpServletRequest request) {
		rsvService.updateform(request);
		return new ModelAndView("walkerPrf/updateform");
	}
}
