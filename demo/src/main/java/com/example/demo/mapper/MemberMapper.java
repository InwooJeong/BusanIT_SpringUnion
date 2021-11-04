package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.MemberDTO;

@Mapper
public interface MemberMapper {
	
	public MemberDTO read(String userid);
	
}
