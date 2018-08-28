package com.dog.walker.search.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.dog.walker.manage.dao.ManageDao;
import com.dog.walker.manage.dto.ManageDto;
import com.dog.walker.petwalker.dao.PetwalkerDao;
import com.dog.walker.petwalker.dto.PetwalkerDto;



@Service
public class SearchServiceImpl implements SearchService{

	@Autowired
	private PetwalkerDao petwalkerdao;
	
	@Autowired
	private ManageDao managedao;

	
	@Override
	public void getWalkerTotal(String input_address, ModelAndView mView) {
		int num = petwalkerdao.getCount(input_address);
		mView.addObject("TotalNum",num);
	}

	
	@Override
	public void findPetWalker(String input_address, ModelAndView mView) {
		List<PetwalkerDto> findWalker = petwalkerdao.getList(input_address);
		mView.addObject("findWalker",findWalker);
	}

	@Override
	public void getProfile(String input_address, ModelAndView mView) {
		List<ManageDto> profileWalker = managedao.getList(input_address);
		
		mView.addObject("profileWalker",profileWalker);
	}
	
	
}
