package com.superman.www;

public class PersonMain {

	public static void main(String[] args) {
		Person p1 = new Person("홍길동", 27, "삼성");
		Person p2 = new Person("배트맨", 25, "엘지");
		
		p1.info();
		p2.info();
	}
}