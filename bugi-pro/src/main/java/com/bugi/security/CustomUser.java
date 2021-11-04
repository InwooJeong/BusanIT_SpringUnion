package com.bugi.security;

import java.util.Collection;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.bugi.domain.MemberVO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CustomUser extends User {
	
	private MemberVO memberVO;
	
	public CustomUser(String username, String password, Collection<SimpleGrantedAuthority> collection, MemberVO memberVO) {
		super(username, password, collection);
		this.memberVO = memberVO;
	}
	
//	public CustomUser(MemberVO memberVO) {
//		super(memberVO.getUsername(),
//			  memberVO.getPassword(),
//			  memberVO.getAuthList().stream().map(auth->new SimpleGrantedAuthority(auth.getAuth())).collect(Collectors.toList()));
//		this.memberVO = memberVO;
//	}

}
