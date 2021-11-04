package com.bugi.domain;

import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
	
	private int mNumber;
	private String nickname;
	private String username;
	private String password;
	private String gender;
	private String mAddress;
	private String phone;
	private int point;
	private String email;
	private int reported;
	private String recvEmail;
	private String recvTel;
	
	private AuthVO authVO;

}
