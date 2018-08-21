package com.dog.walker.search.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.dog.walker.petwalker.dao.PetwalkerDao;
import com.dog.walker.petwalker.dto.PetwalkerDto;


@Service
public class SearchServiceImpl implements SearchService{

	@Autowired
	private PetwalkerDao petwalkerdao;

	@Override
	public void findPetWalker(String input_address, ModelAndView mView) {
		List<PetwalkerDto> findWalker = petwalkerdao.getList(input_address);
		mView.addObject("findWalker",findWalker);
	}
	
	
}
