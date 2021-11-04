package com.bugi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bugi.domain.MemberVO;
import com.bugi.service.MemberService;
import com.bugi.util.Script;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	MemberService memberService;
	
	@GetMapping(value= {"/","index"})
	public String home() {
		
		//GET 요청
		//http://localhost:8090/
		System.out.println("index~");
		
		return "index"; //실행할 jsp뷰 이름 리턴
	}
	
	@GetMapping("/map")
	public String map() {
		//System.out.println("여기@@");
		
		return "map";
	}
	
	@GetMapping("customLogin")
	public String login() {
		return "login";
	}
	
	@GetMapping("login")
	public String loginPage() {
		return "login";
	}
	
	/*
	 * @GetMapping("/member/joinTest") public String join() {
	 * System.out.println("joinTest get@@@@@@@@@@@@"); return "member/joinTest"; }
	 * 
	 * @PostMapping("/member/joinTest") public ResponseEntity<String> join(MemberVO
	 * memberVO){
	 * 
	 * System.out.println("join db 연동 테스트@@@");
	 * 
	 * int mMumber = memberService.nextNum();
	 * 
	 * memberVO.setMNumber(mMumber);
	 * 
	 * System.out.println(memberVO);
	 * 
	 * memberService.joinTest(memberVO);
	 * 
	 * HttpHeaders headers = new HttpHeaders(); headers.add("Content-Type",
	 * "text/html; charset=UTF-8");
	 * 
	 * String str = Script.href("회원가입 테스트", "/");
	 * 
	 * return new ResponseEntity<String>(str, headers, HttpStatus.OK); }
	 */
	
}
