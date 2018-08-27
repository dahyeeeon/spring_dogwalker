package com.dog.walker.search.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.dog.walker.petwalker.dao.PetwalkerDao;
import com.dog.walker.petwalker.dto.PetwalkerDto;
import com.dog.walker.profile.dao.WalkerProfileDao;
import com.dog.walker.profile.dto.WalkerProfileDto;


@Service
public class SearchServiceImpl implements SearchService{

	@Autowired
	private PetwalkerDao petwalkerdao;
	
	@Autowired
	private WalkerProfileDao walkerprofiledao;

	
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
		List<WalkerProfileDto> profileWalker = walkerprofiledao.getList(input_address);
		
		mView.addObject("profileWalker",profileWalker);
	}
	
	
}
