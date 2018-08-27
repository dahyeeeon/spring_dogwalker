package com.dog.walker.petwalker.dto;

public class PetwalkerDto {
	private String id;
	private String nickname;
	private String pwd;
	private String kakao;
	private String phone;
	private String addr;
	private String sex;
	private String hasPet;
	private String imagePath;
	private int evaluation;
	private String regdate;
	
	public PetwalkerDto() {}

	public PetwalkerDto(String id, String nickname, String pwd, String kakao, String phone, String addr, String sex,
			String hasPet, String imagePath, int evaluation, String regdate) {
		super();
		this.id = id;
		this.nickname = nickname;
		this.pwd = pwd;
		this.kakao = kakao;
		this.phone = phone;
		this.addr = addr;
		this.sex = sex;
		this.hasPet = hasPet;
		this.imagePath = imagePath;
		this.evaluation = evaluation;
		this.regdate = regdate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getKakao() {
		return kakao;
	}

	public void setKakao(String kakao) {
		this.kakao = kakao;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getHasPet() {
		return hasPet;
	}

	public void setHasPet(String hasPet) {
		this.hasPet = hasPet;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public int getEvaluation() {
		return evaluation;
	}

	public void setEvaluation(int evaluation) {
		this.evaluation = evaluation;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
}
