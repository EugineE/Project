package com.jeppiaar.dao;

import java.util.Random;

public class Captcha {

	public static void main(String[] args) {

		System.out.println(createCaptcha());

	}
	public static String createCaptcha	() {
		Random random=new Random();
		int n=7+(Math.abs(random.nextInt()%3));
		System.out.println(n);
		 
		StringBuffer captcha=new StringBuffer();
		for(int i=0;i<n;i++){
			int bcase=Math.abs(random.nextInt())%62;
			int num=0;
			if(bcase<26){
				num=65+bcase;
			}else if(bcase<52){
				num=97+(bcase-26);
			}else{
				num=48+(bcase-52);
			}
			captcha.append((char) num);
		}
		return captcha.toString();
	}
}
