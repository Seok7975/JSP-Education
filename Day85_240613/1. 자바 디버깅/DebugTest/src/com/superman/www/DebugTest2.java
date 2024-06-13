package com.superman.www;

public class DebugTest2 {

	public static void main(String[] args) {
		int i = 1, sum = 0;		
		boolean flag = false;
		
		for(i=1;i<=100;i++) {
			sum += i;
			System.out.println(i+" " + sum);
			if(sum > 2000) flag = true;
		}
	}
}