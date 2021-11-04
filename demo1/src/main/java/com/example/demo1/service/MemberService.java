package com.example.demo1.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo1.model.JapMember;
import com.example.demo1.repository.MemberRepository;

@Service
public class MemberService {
	
	@Autowired
	private MemberRepository memberRepository;
	
	//추가
	public void sava(JapMember member) {
		memberRepository.save(member);
	}

	public List<JapMember> list() {
		return memberRepository.findAll();
	}
	
	//상세보기 (Optional)
	public JapMember detail(Long id) {
		return memberRepository.findById(id).get();
	}
	
	public void delete(long id) {
		memberRepository.deleteById(id);
	}
	
	@Transactional
	public void update(JapMember member) {
		JapMember m = memberRepository.findById(member.getId()).get();
		m.setAddr(member.getAddr());
		m.setEmail(member.getEmail());
		m.setMemo(member.getMemo());
		m.setName(member.getName());
	
	}
	
}
