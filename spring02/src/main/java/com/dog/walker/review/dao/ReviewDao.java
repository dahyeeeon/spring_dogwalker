package com.dog.walker.review.dao;

import java.util.List;

import com.dog.walker.review.dto.ReviewDto;

public interface ReviewDao {
	public int getCount(ReviewDto dto);
	public void insert(ReviewDto dto);
	public List<ReviewDto> getList(ReviewDto dto);

}
