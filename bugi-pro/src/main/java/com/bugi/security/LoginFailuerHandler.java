package com.bugi.security;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

public class LoginFailuerHandler implements AuthenticationFailureHandler {
	
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		
		System.out.println("로그인 실패@@@@@@@");
		
		if(exception instanceof AuthenticationServiceException) {
			System.out.println("AuthenticationServiceException@@@@@@");
			request.setAttribute("loginFailMsg", "존재하지 않는 사용자 입니다!");
		}else if(exception instanceof BadCredentialsException) {
			System.out.println("BadCredentialsException@@@@@");
			request.setAttribute("loginFailMsg", "아이디 또는 비밀번호가 틀렸습니다!");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/loginFail.jsp");
		dispatcher.forward(request, response);
		
	}

}
