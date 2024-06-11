package com.superman.ex.listener;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class Listener1 implements ServletContextAttributeListener, ServletContextListener {
	
	// 톰캣이 구동될 때 실행된다. 
	public void contextInitialized(ServletContextEvent e) {
		System.out.println("ServletContext 가 초기화 되었습니다.");
		System.out.println("init context = " + e.getServletContext());
	}
	
	// 톰캣이 종료될 때 실행된다.
	public void contextDestroyed(ServletContextEvent e) {		
		System.out.println("ServletContext 가 소멸 되었습니다.");
		System.out.println("dest context = " + e.getServletContext());
	}
	
	// ServletContext 객체에 속성이 새로 추가될 때 실행된다.
	public void attributeAdded(ServletContextAttributeEvent e) {
		System.out.println("Context 영역에 값이 추가 되었습니다.");
		System.out.println("added = " + e.getName() + " : " + e.getValue());
	}

	// ServletContext 객체의 속성이 삭제될 때 실행 된다.
	public void attributeRemoved(ServletContextAttributeEvent e) {
		System.out.println("Context 영역에 값이 삭제 되었습니다.");
		System.out.println("removed = " + e.getName() + " : " + e.getValue());
	}

	// ServletContext 객체의 속성이 수정될 때 수정 직전에 실행된다.
	public void attributeReplaced(ServletContextAttributeEvent e) {
		System.out.println("Context 영역에 값이 변경 되었습니다.");
		System.out.println("replaced = " + e.getName() + " : " + e.getValue());		
	}
}