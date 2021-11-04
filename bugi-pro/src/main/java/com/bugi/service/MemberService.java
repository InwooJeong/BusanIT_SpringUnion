package com.bugi.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bugi.domain.MemberVO;
import com.bugi.mapper.MemberMapper;

@Service
@Transactional
public class MemberService {
	
	private MemberMapper memberMapper;
	
	public MemberService(MemberMapper memberMapper) {
		this.memberMapper = memberMapper;
	}
	

	//public void joinTest(MemberVO memberVO) { memberMapper.joinTest(memberVO); }
	  
	public int nextNum() { 
		return memberMapper.nextNum(); 
	}
	 
	
	public MemberVO loginWithSecurity(String username) {
		return memberMapper.loginWithSecurity(username);
	}

	public MemberVO getMemberById(String username) {
		return memberMapper.getMemberById(username);
	}

	public int getCountById(String username) {
		return memberMapper.getCountById(username);
	}

	public int getCountByNick(String nickname) {
		return memberMapper.getCountByNick(nickname);
	}


	public void join(MemberVO memberVO) {
		memberMapper.join(memberVO);
	}


	public void giveAuth(int mNumber) {
		memberMapper.giveAuth(mNumber);
	}

}
