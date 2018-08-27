package com.dog.walker.review.dto;

import org.springframework.web.multipart.MultipartFile;

public class ReviewDto {
	private int num;
	private String writer;
	private String title;
	private String content;
	private String stars;
	private String walker;
	private String regdate;
	private String imagePath;
	private String orgImageName;
	private String saveImageName;
	private long ImageSize; 
	private int startRowNum;
	private int endRowNum;
	private int prevNum;
	private int nextNum;
	private MultipartFile file;
	
	public ReviewDto() {}

	public ReviewDto(int num, String writer, String title, String content, String stars, String walker, String regdate,
			String imagePath, String orgImageName, String saveImageName, long imageSize, int startRowNum,
			int endRowNum, int prevNum, int nextNum, MultipartFile file) {
		super();
		this.num = num;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.stars = stars;
		this.walker = walker;
		this.regdate = regdate;
		this.imagePath = imagePath;
		this.orgImageName = orgImageName;
		this.saveImageName = saveImageName;
		ImageSize = imageSize;
		this.startRowNum = startRowNum;
		this.endRowNum = endRowNum;
		this.prevNum = prevNum;
		this.nextNum = nextNum;
		this.file = file;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getStars() {
		return stars;
	}

	public void setStars(String stars) {
		this.stars = stars;
	}

	public String getWalker() {
		return walker;
	}

	public void setWalker(String walker) {
		this.walker = walker;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getOrgImageName() {
		return orgImageName;
	}

	public void setOrgImageName(String orgImageName) {
		this.orgImageName = orgImageName;
	}

	public String getSaveImageName() {
		return saveImageName;
	}

	public void setSaveImageName(String saveImageName) {
		this.saveImageName = saveImageName;
	}

	public long getImageSize() {
		return ImageSize;
	}

	public void setImageSize(long imageSize) {
		ImageSize = imageSize;
	}

	public int getStartRowNum() {
		return startRowNum;
	}

	public void setStartRowNum(int startRowNum) {
		this.startRowNum = startRowNum;
	}

	public int getEndRowNum() {
		return endRowNum;
	}

	public void setEndRowNum(int endRowNum) {
		this.endRowNum = endRowNum;
	}

	public int getPrevNum() {
		return prevNum;
	}

	public void setPrevNum(int prevNum) {
		this.prevNum = prevNum;
	}

	public int getNextNum() {
		return nextNum;
	}

	public void setNextNum(int nextNum) {
		this.nextNum = nextNum;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	
	

	

}
