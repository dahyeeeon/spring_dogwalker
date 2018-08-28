package com.dog.walker.manage.dao;

import java.util.List;

import com.dog.walker.manage.dto.ManageDto;
import com.dog.walker.petwalker.dto.PetwalkerDto;


public interface ManageDao {
   public int getCount(ManageDto dto);
   public void insert(ManageDto dto);
   public List<ManageDto> reviewgetList(ManageDto dto);
   public void profileinsert(ManageDto dto);
   public void reservationinsert(ManageDto dto);
   public List<ManageDto> reservegetList(ManageDto dto);
   public void update(ManageDto dto);
   public void delete(int num);
   public ManageDto getData(int num);
   public List<ManageDto> rgetList(ManageDto dto);
   public List<ManageDto> getList(String input_address);
   public List<ManageDto> pwkList(ManageDto dto);
   public ManageDto DgetData(ManageDto dto);
   public List<ManageDto> DtgetList(String nickname);
}