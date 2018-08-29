package com.dog.walker.manage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dog.walker.manage.dto.ManageDto;
import com.dog.walker.petwalker.dto.PetwalkerDto;

@Repository
public class ManageDaoImpl implements ManageDao{
   
   
   // 의존객체 DI
   @Autowired
   private SqlSession session;
   
   
   @Override
   public void insert(ManageDto dto) {
      session.insert("review.insert", dto);
      
   }

   @Override
   public List<ManageDto> reviewgetList(ManageDto dto) {
      return session.selectList("review.getList", dto);
   }

   @Override
   public int getCount(ManageDto dto) {
      return session.selectOne("review.getCount");
   }
   
   @Override
      public void profileinsert(ManageDto dto) {
         session.insert("walkerprofile.insert", dto);
   }
   

   
    @Override
      public void reservationinsert(ManageDto dto) {
         session.insert("rsv.insert", dto);
         
      }

      @Override
      public List<ManageDto> reservegetList(ManageDto dto) {
         
         return session.selectList("rsv.getList", dto);
      }

      @Override
      public void update(ManageDto dto) {
         session.update("rsv.update",dto);
         
      }

      @Override
      public void delete(int num) {
         session.delete("rsv.delete",num);
         
      }

      @Override
      public ManageDto getData(int num) { 
         return session.selectOne("rsv.getData",num);
      }

	@Override
	public ManageDto check(int num) {
		return session.selectOne("walkerprofile.select",num);
	}

	@Override
	public void profileupdate(ManageDto dto) {
		session.update("walkerprofile.update",dto);
		
	}

	@Override
	public ManageDto getData2(String id) {
		ManageDto dto=session.selectOne("walkerprofile.getData", id);
		return dto;	
	}

	

   
   
}