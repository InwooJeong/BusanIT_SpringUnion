package com.bugi.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bugi.domain.MemberVO;
import com.bugi.service.MemberService;
import com.bugi.util.Script;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private PasswordEncoder pwencoder;
	
	/*
	 * @PostMapping("login") public ResponseEntity<String> login(String id, String
	 * passwd, String rememberMe, HttpSession session, HttpServletResponse
	 * response){
	 * 
	 * System.out.println("login 수행~~");
	 * 
	 * MemberVO memberVO = memberService.loginWithSecurity(id);
	 * 
	 * String message = "";
	 * 
	 * if(memberVO != null) { //System.out.println(passwd);
	 * //System.out.println(memberVO.getPasswd());
	 * 
	 * if(!(passwd.equals(memberVO.getPasswd()))){ message = "비밀번호가 일치하지 않습니다."; }
	 * 
	 * }else { message = "존재하지 않는 아이디입니다."; }
	 * 
	 * if(memberVO == null || !(passwd.equals(memberVO.getPasswd()))) { HttpHeaders
	 * headers = new HttpHeaders(); headers.add("Content-Type",
	 * "text/html; charset=UTF-8");
	 * 
	 * String str = Script.back(message);
	 * 
	 * return new ResponseEntity<String>(str, headers, HttpStatus.OK); }
	 * 
	 * session.setAttribute("id", id);
	 * 
	 * if(rememberMe!=null) { Cookie cookie = new Cookie("id", id);
	 * 
	 * cookie.setPath("/"); cookie.setMaxAge(60*10);
	 * 
	 * response.addCookie(cookie); }
	 * 
	 * HttpHeaders headers = new HttpHeaders(); headers.add("Location", "/");
	 * 
	 * return new ResponseEntity<String>(headers, HttpStatus.FOUND); }
	 */
	
	@GetMapping("join")
	public String join() {
		return "member/join";
	}
	
	@GetMapping("/idCheck/{username}")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> idCheck(@PathVariable("username") String username) {
		System.out.println("아이디 중복 검사 넘어옴");
		System.out.println("체크 할 ID : " + username);
		MemberVO memberVO = memberService.getMemberById(username);
		int count = memberService.getCountById(username);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("member", memberVO);
		map.put("count", count);
		
		return new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK); 
	}
	
	@GetMapping("/nickCheck/{nickname}")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> nickCheck(@PathVariable("nickname") String nickname){
		System.out.println("닉네임 중복 검사 넘어옴");
		System.out.println("체크 할 닉네임 : " + nickname);
		
		int count = memberService.getCountByNick(nickname);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("count", count);
		
		return new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
	}
	
	@GetMapping("/pwCheck/{password}")
	@ResponseBody
	public boolean pwCheck(@PathVariable("password") String password) {
		
		boolean isOk = false;
		
		String pw_check = "^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[$@$!%*?&`~'\"+=])[A-Za-z[0-9]$@$!%*?&`~'\"+=]{6,12}$";
		
		Pattern valid = Pattern.compile(pw_check);
		Matcher matcher = valid.matcher(password);
		
		if(matcher.find()) {
			isOk = true;
		}
		
		return isOk;
	}
	
	@PostMapping("join")
	public ResponseEntity<String> join(MemberVO memberVO){
		System.out.println("회원 가입 post");
		
		int mNumber = memberService.nextNum();
		
		memberVO.setMNumber(mNumber);
		
		String password = pwencoder.encode(memberVO.getPassword());
		memberVO.setPassword(password);
		
		memberService.join(memberVO);
		memberService.giveAuth(mNumber);
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=UTF-8");
		
		String str = Script.href("가입이 완료되었습니다! 환영합니다~"+memberVO.getNickname()+"님", "/");
		
		return new ResponseEntity<String>(str,headers,HttpStatus.OK);
	}
	
	
}
