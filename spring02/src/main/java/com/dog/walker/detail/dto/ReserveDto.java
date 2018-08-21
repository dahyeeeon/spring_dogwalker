package com.dog.walker.detail.dto;

public class ReserveDto {
	
	public int num;
	public String id;
	public String kakao;
	public String nickname;
	public String dogSize;
	public String selectDate;
	public String timeSlot;
	public String cctv;
	
	public ReserveDto() {}

	public ReserveDto(int num, String id, String kakao, String nickname, String dogSize, String selectDate,
			String timeSlot, String cctv) {
		super();
		this.num = num;
		this.id = id;
		this.kakao = kakao;
		this.nickname = nickname;
		this.dogSize = dogSize;
		this.selectDate = selectDate;
		this.timeSlot = timeSlot;
		this.cctv = cctv;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getKakao() {
		return kakao;
	}

	public void setKakao(String kakao) {
		this.kakao = kakao;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getDogSize() {
		return dogSize;
	}

	public void setDogSize(String dogSize) {
		this.dogSize = dogSize;
	}

	public String getSelectDate() {
		return selectDate;
	}

	public void setSelectDate(String selectDate) {
		this.selectDate = selectDate;
	}

	public String getTimeSlot() {
		return timeSlot;
	}

	public void setTimeSlot(String timeSlot) {
		this.timeSlot = timeSlot;
	}

	public String getCctv() {
		return cctv;
	}

	public void setCctv(String cctv) {
		this.cctv = cctv;
	}

	
	
	
}
