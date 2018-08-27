package com.dog.walker.petwalker.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.dog.walker.petwalker.dao.PetwalkerDao;
import com.dog.walker.petwalker.dto.PetwalkerDto;

@Service
public class PetwalkerServiceImpl implements PetwalkerService {
	// 의존객체 DI
	@Autowired
	private PetwalkerDao dao;

	@Override
	public boolean canUseId(String id) {
		// 인자로 전달된 아이디의 사용가능 여부를 리턴해 준다.
		return dao.canUseId(id);
	}

	@Override
	public void signup(ModelAndView mView, PetwalkerDto dto) {
		//비밀번호 암호화를 도와주는 객체 생성 
		BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
		//Dto 에 있는 비밀번호를 암호화 한다.
		String encodedPwd=encoder.encode(dto.getPwd());
		//암호화된 비밀번호를 UsersDto에 다시 담는다.
		dto.setPwd(encodedPwd);
		//Dao 를 이용해서 회원 정보를 저장한다. 
		dao.insert(dto);
		//request 에 담을 내용을 ModelAndView 객체에 담는다.
		mView.addObject("msg", dto.getId()+" 회원님 가입되었습니다.");
	}

	@Override
	public void login(ModelAndView mView, PetwalkerDto dto, HttpSession session) {
		//로그인 성공여부를 담을 지역 변수 
		boolean isLoginSuccess=false;
		//인자로 전달된 Dto 에 있는 회원의 아이디를 이용해서 
		//Select 한다. 
		PetwalkerDto resultDto=dao.getData(dto.getId());
		//해당 아이디가 DB 에 존재한다면
		if(resultDto != null) {
		//사용자가 입력한 비밀번호와 DB에 저장된 암호화된 비밀번호
		//를 비교해서 일치하는지 판단해야한다.
		isLoginSuccess=
			BCrypt.checkpw(dto.getPwd(), resultDto.getPwd());
				}
			if(isLoginSuccess) {
			//로그인 처리를 해준다. 
			session.setAttribute("id", dto.getId());
			}
		//request 에 담을 내용을 ModelAndView 객체에 담는다. 
			mView.addObject("isLoginSuccess", isLoginSuccess);
	}

	@Override
	public void info(ModelAndView mView, HttpSession session) {
		//세션에 저장된 아이디를 읽어와서 
		String id=(String)session.getAttribute("id");
		//해당 회원정보를 얻어와서 
		PetwalkerDto dto=dao.getData(id);
		//ModelAndView 객체에 담는다 (request 에 담는 작업 대신...)
		mView.addObject("dto", dto);
	}

	@Override
	public void updateForm(ModelAndView mView, HttpSession session) {
		String id=(String)session.getAttribute("id");
		PetwalkerDto dto=dao.getData(id);
		mView.addObject("dto", dto);

	}

	@Override
	public void update(PetwalkerDto dto) {
		dao.update(dto);

	}

	@Override
	public boolean isValidPwd(String inputPwd, HttpSession session) {
		//세션영역에 저장된 아이디를 읽어와서 
		String id=(String)session.getAttribute("id");
		//DB 에서 해당 정보를 얻어와서 
		PetwalkerDto dto=dao.getData(id);
		//일치하는지 여부를 
		boolean isValid=BCrypt.checkpw(inputPwd, dto.getPwd());
		//리턴하기 
		return isValid;
	}

	@Override
	public void updatePwd(String pwd, HttpSession session) {
		//세션에 저장된 아이디 
		String id=(String)session.getAttribute("id");
		//비밀번호 암호화 
		String encodedPwd=new BCryptPasswordEncoder().encode(pwd);
		//UsersDto 객체에 두개의 정보 담기
		PetwalkerDto dto=new PetwalkerDto();
		dto.setId(id);
		dto.setPwd(encodedPwd);
		//UsersDto 객체를 인자로 전달해서 비밀번호 수정하기 
		dao.updatePwd(dto);
	}

	@Override
	public void updateImg(String pwd, HttpSession session) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(ModelAndView mView, HttpSession session) {
		//세션에 저장된 아이디를 읽어온다.
		String id=(String)session.getAttribute("id");
		//DB 에서 해당 정보를 삭제한다.
		dao.delete(id);
		//로그 아웃 처리를 한다.
		session.invalidate();
		//ModelAndView 객체에 메세지를 담는다.
		mView.addObject("msg",id+" 님 회원 탈퇴 되었습니다.");
	}

}
