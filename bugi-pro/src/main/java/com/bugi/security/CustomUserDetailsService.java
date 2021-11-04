package com.bugi.security;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.bugi.domain.MemberVO;
import com.bugi.mapper.MemberMapper;

public class CustomUserDetailsService implements UserDetailsService{
	
	@Autowired
	private MemberMapper memberMapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println("CustomUserDetailsService");
		System.out.println("username : "+username);
		
		MemberVO memberVO = memberMapper.loginWithSecurity(username);
		
		//System.out.println("매퍼까지 들어감");
		
		//return memberVO == null? null : new CustomUser(memberVO);
		
		if (memberVO == null) {
			return null;
		} else {
			List<SimpleGrantedAuthority> authorities = Arrays.asList(new SimpleGrantedAuthority(memberVO.getAuthVO().getAuth()));
			
			return new CustomUser(memberVO.getUsername(), memberVO.getPassword(), authorities, memberVO);
		}
		
	}

}
