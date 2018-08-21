package com.dog.walker.profile.dao;

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

}
