package com.superman.ex;
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MySessionFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest hRequest = (HttpServletRequest)request;
		HttpSession hSession = hRequest.getSession();
		String id = (String)hSession.getAttribute("id");
		
		if(id == null || id.trim().length() == 0) {			
			HttpServletResponse h_response = (HttpServletResponse)response;
			h_response.sendRedirect("../error.htm");			
		}
		chain.doFilter(request, response);
	}
}