package com.dog.walker.profile.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dog.walker.profile.dto.WalkerProfileDto;

@Repository
public class WalkerProfileDaoImpl implements WalkerProfileDao {
	@Autowired
	private SqlSession session;

	@Override
	public void insert(WalkerProfileDto dto) {
		session.update("walkerprofile.insert", dto);
	}
	
	@Override
	public List<WalkerProfileDto> getList(String input_address) {
		List<WalkerProfileDto> list = session.selectList("walkerprofile.getList",input_address);
		return list;
	}
	
}
