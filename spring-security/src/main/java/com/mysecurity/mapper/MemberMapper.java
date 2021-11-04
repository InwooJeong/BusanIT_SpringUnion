package com.mysecurity.mapper;

import com.mysecurity.dto.MemberDTO;

public interface MemberMapper {

	MemberDTO read(String userid);
	
}
