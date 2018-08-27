package com.dog.walker.profile.service;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.dog.walker.profile.dao.WalkerProfileDao;
import com.dog.walker.profile.dto.WalkerProfileDto;

@Service
public class WalkerProfileServiceImpl implements WalkerProfileService{
	@Autowired
	private WalkerProfileDao dao;


	@Override
	public void insert(MultipartHttpServletRequest request,HttpSession session, ModelAndView mView, WalkerProfileDto dto) {
		List<MultipartFile> fileList = request.getFiles("file");

		//파일을 저장할 폴더의 절대 경로를 얻어온다.
	      String realPath=request.getSession()
	            .getServletContext().getRealPath("/upload");
	      //콘솔에 경로 출력해보기
	      //MultipartFile 객체의 참조값 얻어오기
	      //FileDto 에 담긴 MultipartFile 객체의 참조값을 얻어온다.
	      for (MultipartFile mFile : fileList) {
		      //원본 파일명
		      String orgFileName=mFile.getOriginalFilename();
		      //파일 사이즈
		      long fileSize=mFile.getSize();
		      //저장할 파일의 상세 경로
		      String filePath=realPath+File.separator;
		      //디렉토리를 만들 파일 객체 생성
		      File file=new File(filePath);
		      if(!file.exists()){//디렉토리가 존재하지 않는다면
		         file.mkdir();//디렉토리를 만든다.
	      
	      }
		   
		  String id=(String)session.getAttribute("id");
		      
	      //파일 시스템에 저장할 파일명을 만든다. (겹치치 않게)
	      String saveFileName=System.currentTimeMillis()+orgFileName;
	      try{
	         //upload 폴더에 파일을 저장한다.
	         mFile.transferTo(new File(filePath+saveFileName));
	      }catch(Exception e){
	         e.printStackTrace();
	      }
	     
	      //FileDto 객체에 추가 정보를 담는다.
	      dto.setId(id);
	      dto.setOrgFileName(orgFileName);
	      dto.setSaveFileName(saveFileName);
	      dto.setFileSize(fileSize);
	      dto.setCareer(dto.getCareer());
	      dto.setExperience(dto.getExperience());
	      dto.setFreeservice(dto.getFreeservice());
	      dto.setImagePath("/upload/"+saveFileName);
	      

	      dao.insert(dto);

		
	}


}
}