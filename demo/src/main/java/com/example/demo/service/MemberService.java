package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.demo.domain.CustomUser;
import com.example.demo.mapper.MemberMapper;
import com.example.demo.vo.MemberDTO;

@Service
public class MemberService implements UserDetailsService{
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		System.out.println("loadUserByUsername");
		MemberDTO member = memberMapper.read(username);
		
		return member == null? null : new CustomUser(member);
	}
	
}
