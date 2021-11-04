package com.bugi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bugi.domain.Criteria;
import com.bugi.domain.MemberVO;
import com.bugi.domain.PageDTO;
import com.bugi.service.AdminService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("adminMain")
	public String adminMain() {
		return "admin/adminMain";
	}
	
	@GetMapping("memberList")
	public String memberList(Criteria cri, Model model) {
		System.out.println("관리자 페이지 회원 정보 : 전체@@@@");

		List<MemberVO> memberList = adminService.getMembers(cri);
		
		int totalCount = adminService.getTotalMember(cri);
		PageDTO pageDTO = new PageDTO(totalCount, cri);
		
		
		model.addAttribute("memberList", memberList);
		model.addAttribute("pageMaker", pageDTO);
		
		System.out.println(memberList);

		return "admin/memberList";
	}
	
	@GetMapping("reportedList")
	public String reportedList(Criteria cri, Model model) {
		System.out.println("관리자 페이지 회원 정보 : 신고된 회원@@@@");
		
		List<MemberVO> reportedList = adminService.getReportedMembers(cri);
		
		int totalCount = adminService.getTotalReported(cri);
		PageDTO pageDTO = new PageDTO(totalCount, cri);
		
		model.addAttribute("reportedList", reportedList);
		model.addAttribute("pageMaker", pageDTO);
		
		System.out.println(reportedList);
		
		return "admin/reportedList";
	}

}
