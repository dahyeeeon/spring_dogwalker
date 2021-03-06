package com.dog.walker;


import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dog.walker.detail.service.DetailService;
import com.dog.walker.review.service.ReviewService;

@Controller
public class HomeController {
	@Autowired
	private ReviewService rService;
	
	
   //로그를 찍기 위한 도구
   private static final Logger logger =
         LoggerFactory.getLogger(HomeController.class);
   
   @RequestMapping("/home")
   public String home(Locale locale, Model model, HttpServletRequest request, HttpSession session) {
      logger.info("/home.do 요청 처리함!!");
      rService.reviewgetList(request, session);
	   //아이디 모달 경로 이동때문에 모든 컨트롤러에 다 고치기!!!
	   request.setAttribute("url", request.getContextPath()+"/home.do");
      return "home";

   }
}