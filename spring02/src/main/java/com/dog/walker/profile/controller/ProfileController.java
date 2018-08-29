package com.dog.walker.profile.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.dog.walker.manage.dto.ManageDto;
import com.dog.walker.petwalker.dto.PetwalkerDto;
import com.dog.walker.profile.service.WalkerProfileService;

@Controller
public class ProfileController {
   @Autowired
   private WalkerProfileService wpService;
   
      @RequestMapping("/petwalker/profile")
      public ModelAndView insert(HttpServletRequest request,
            @ModelAttribute ManageDto dto) {
         
         
         // 서비스에 전달할 ModelAndView 객체 생성
         ModelAndView mView = new ModelAndView();
         // 서비스에 ModelAndVie 객체와 폼 전송된 회원 가입정보가
         // 담겨있는 UsersDto 객체를 전달한다.
         wpService.profileinsert(request, mView, dto);
         // ModelAndView 객체에 view 페이지 정보를 담고
         return new ModelAndView("redirect:/petwalker/info.do");
      }

      // 회원가입 폼 요청 처리
      @RequestMapping("/petwalker/profileform")
      public String insertForm() {
         return "petwalker/profileform";
      }
      
     
}