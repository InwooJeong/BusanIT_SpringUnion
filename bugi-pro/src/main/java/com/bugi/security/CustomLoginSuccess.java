package com.bugi.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class CustomLoginSuccess implements AuthenticationSuccessHandler{

	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("CustomLogin");
		String encPwd = passwordEncoder.encode(request.getParameter("password"));
		
		List<String> authNames = new ArrayList<String>();
		authentication.getAuthorities().forEach(authority->authNames.add(authority.getAuthority()));
		
		System.out.println("authNames : " + authNames);
		
		if(authNames.contains("ROLE_ADMIN")) {
			response.sendRedirect("/admin/adminMain");
			return;
		}
		
		if(authNames.contains("ROLE_USER")) {
			response.sendRedirect("/");
			return;
		}
		
		response.sendRedirect("/");
		
	}

}
