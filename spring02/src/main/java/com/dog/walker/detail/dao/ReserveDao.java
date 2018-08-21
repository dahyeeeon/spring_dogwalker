package com.dog.walker.detail.dao;

import java.util.List;

import com.dog.walker.detail.dto.ReserveDto;



public interface ReserveDao {
	public void insert(ReserveDto dto);
	public List<ReserveDto> getList(ReserveDto dto);
	public void update(ReserveDto dto);
	public void delete(int num);
	public ReserveDto getData(int num);
	
}
