package com.bugi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bugi.domain.Criteria;
import com.bugi.domain.MemberVO;
import com.bugi.mapper.AdminMapper;

@Service
public class AdminService {
	
	@Autowired
	private AdminMapper adminMapper;

	public List<MemberVO> getMembers(Criteria cri) {
		
		int startRow = (cri.getPageNum()-1)*cri.getAmount();
		cri.setStartRow(startRow);
		
		return adminMapper.getMembers(cri);
	}

	public List<MemberVO> getReportedMembers(Criteria cri) {
		
		int startRow = (cri.getPageNum()-1)*cri.getAmount();
		cri.setStartRow(startRow);
		
		return adminMapper.getReportedMembers(cri);
	}

	public int getTotalMember(Criteria cri) {
		return adminMapper.getTotalMember(cri);
	}

	public int getTotalReported(Criteria cri) {
		return adminMapper.getTotalReported(cri);
	}

}
