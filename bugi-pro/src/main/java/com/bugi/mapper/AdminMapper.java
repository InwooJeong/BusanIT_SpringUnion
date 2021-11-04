package com.bugi.mapper;

import java.util.List;

import com.bugi.domain.Criteria;
import com.bugi.domain.MemberVO;

public interface AdminMapper {

	List<MemberVO> getMembers(Criteria cri);

	List<MemberVO> getReportedMembers(Criteria cri);

	int getTotalMember(Criteria cri);

	int getTotalReported(Criteria cri);

}
