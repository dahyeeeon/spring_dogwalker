package com.dog.walker.profile.dao;

import java.util.List;

import com.dog.walker.profile.dto.WalkerProfileDto;

public interface WalkerProfileDao {
	public void insert(WalkerProfileDto dto);
	public List<WalkerProfileDto> getList(String input_address);
}
