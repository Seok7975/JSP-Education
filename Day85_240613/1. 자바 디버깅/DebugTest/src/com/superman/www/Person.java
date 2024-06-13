package com.superman.www;

public class Person {
	private String name;
	private int age;
	private String company;
	
	public Person() {
	}

	public Person(String name, int age, String company) {
		this.name = name;
		this.age = age;
		this.company = company;
	}
	
	public void info() {
		System.out.println("이름 : " + name);
		System.out.println("나이 : " + age);
		System.out.println("company : " + company);
	}
}