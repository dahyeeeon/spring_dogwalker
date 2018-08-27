package com.dog.walker.profile.dto;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class WalkerProfileDto {
	private String id;
	private	String career;
	private String experience;
	private String freeservice;
	private String imagePath;
	private String orgFileName;
	private String saveFileName;
	private long fileSize;
	private List<MultipartFile> file;
	private String isprofile;
	
	public WalkerProfileDto() {}

	public WalkerProfileDto(String id, String career, String experience, String freeservice, String imagePath,
			String orgFileName, String saveFileName, long fileSize, List<MultipartFile> file, String isprofile) {
		super();
		this.id = id;
		this.career = career;
		this.experience = experience;
		this.freeservice = freeservice;
		this.imagePath = imagePath;
		this.orgFileName = orgFileName;
		this.saveFileName = saveFileName;
		this.fileSize = fileSize;
		this.file = file;
		this.isprofile = isprofile;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getFreeservice() {
		return freeservice;
	}

	public void setFreeservice(String freeservice) {
		this.freeservice = freeservice;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getOrgFileName() {
		return orgFileName;
	}

	public void setOrgFileName(String orgFileName) {
		this.orgFileName = orgFileName;
	}

	public String getSaveFileName() {
		return saveFileName;
	}

	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}

	public long getFileSize() {
		return fileSize;
	}

	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}

	public List<MultipartFile> getFile() {
		return file;
	}

	public void setFile(List<MultipartFile> file) {
		this.file = file;
	}

	public String getIsprofile() {
		return isprofile;
	}

	public void setIsprofile(String isprofile) {
		this.isprofile = isprofile;
	}

	
}
