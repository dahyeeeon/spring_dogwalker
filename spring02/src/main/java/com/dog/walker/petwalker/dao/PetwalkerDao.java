package com.dog.walker.petwalker.dao;

import com.dog.walker.petwalker.dto.PetwalkerDto;

public interface PetwalkerDao {
	public void insert(PetwalkerDto dto);
	public PetwalkerDto getData(String id);
	public void update(PetwalkerDto dto);
	public void delete(String id);
	public boolean canUseId(String id);
	public void updatePwd(PetwalkerDto dto);
	public void updateImg(PetwalkerDto dto);
}
