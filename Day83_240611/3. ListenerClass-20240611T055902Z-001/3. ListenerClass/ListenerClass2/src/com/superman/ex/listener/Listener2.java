package com.superman.ex.listener;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class Listener2 implements ServletRequestListener, ServletRequestAttributeListener,
HttpSessionListener, HttpSessionAttributeListener
{
	// ServletRequest 객체가 초기화 될 때 발생한다.
	public void requestInitialized(ServletRequestEvent e) {
		System.out.println("ServletRequest 객체가 초기화 되었습니다.");
		System.out.println("request = " + e.getServletRequest());
	}
	// ServletRequest 객체가 소멸 될 때 발생한다.
	public void requestDestroyed(ServletRequestEvent e) {		
		System.out.println("ServletRequest 객체가 소멸 되었습니다.");
		System.out.println("request = " + e.getServletRequest());
	}	
	// ServletRequest 영역에 속성이 새로 추가될 때 발생한다.
	public void attributeAdded(ServletRequestAttributeEvent e) {
		System.out.println("ServletRequest 영역에 속성이 새로 추가되었습니다.");
		System.out.println("added = " + e.getName() + " : " + e.getValue());
	}
	// ServletRequest 영역의 속성이 삭제 될 때 발생한다.
	public void attributeRemoved(ServletRequestAttributeEvent e) {
		System.out.println("ServletRequest 영역의 속성이 삭제되었습니다.");
		System.out.println("removed = " + e.getName() + " : " + e.getValue());
	}
	// ServletRequest 영역의 속성 값이 변경될 때 발생한다.
	public void attributeReplaced(ServletRequestAttributeEvent e) {
		System.out.println("ServletRequest 영역에 속성의 값이 변경되었습니다.");
		System.out.println("replaced = " + e.getName() + " : " + e.getValue());
	}
	// HttpSession 객체가 생성될 때 발생한다.
	public void sessionCreated(HttpSessionEvent e) {
		System.out.println("HttpSession 객체가 생성 되었습니다.");
		System.out.println("session = " + e.getSession());
	}
	// HttpSession 객체가 소멸될 때 발생한다.
	public void sessionDestroyed(HttpSessionEvent e) {
		System.out.println("HttpSession 객체가 소멸 되었습니다.");
		System.out.println("session = " + e.getSession());
	}
	// HttpSession에 새로 속성이 추가될 때 발생한다.
	public void attributeAdded(HttpSessionBindingEvent e) {
		System.out.println("HttpSession 영역에 속성이 새로 추가되었습니다.");
		System.out.println("added = " + e.getName() + " : " + e.getValue());
	}
	// HttpSession 영역의 속성이 삭제 될 때 발생한다.
	public void attributeRemoved(HttpSessionBindingEvent e) {
		System.out.println("HttpSession 영역의 속성이 삭제되었습니다.");
		System.out.println("removed = " + e.getName() + " : " + e.getValue());
	}
	// HttpSession 영역의 속성 값이 변경될 때 발생한다.
	public void attributeReplaced(HttpSessionBindingEvent e) {
		System.out.println("HttpSession 영역의 속성 값이 변경되었습니다.");
		System.out.println("replaced = " + e.getName() + " : " + e.getValue());
	}
}