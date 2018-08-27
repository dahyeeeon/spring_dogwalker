package com.dog.walker.review.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dog.walker.review.dto.ReviewDto;

@Repository
public class ReviewDaoImpl implements ReviewDao{
	
	
	// 의존객체 DI
	@Autowired
	private SqlSession session;
	
	
	@Override
	public void insert(ReviewDto dto) {
		session.insert("review.insert", dto);
		
	}

	@Override
	public List<ReviewDto> getList(ReviewDto dto) {
		return session.selectList("review.getList", dto);
	}

	@Override
	public int getCount(ReviewDto dto) {
		return session.selectOne("review.getCount");
	}

}
