package com.dog.walker.detail.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dog.walker.detail.dto.ReserveDto;

@Repository
public class ReserveDaoImpl implements ReserveDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public void insert(ReserveDto dto) {
		session.insert("rsv.insert", dto);
		
	}

	@Override
	public List<ReserveDto> getList(ReserveDto dto) {
		
		return session.selectList("rsv.getList", dto);
	}

	@Override
	public void update(ReserveDto dto) {
		session.update("rsv.update",dto);
		
	}

	@Override
	public void delete(int num) {
		session.delete("rsv.delete",num);
		
	}

	@Override
	public ReserveDto getData(int num) {
		
		return session.selectOne("rsv.getData",num);
	}
	
}
