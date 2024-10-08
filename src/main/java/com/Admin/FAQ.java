package com.Admin;

public class FAQ {

	private int id;
	private String question;
	private String answer;
	
	public FAQ(int id, String question, String answer) {
		
		this.id = id;
		this.question = question;
		this.answer = answer;
		
	}

	
	public int getid() {
		return id;
	}

	
	public String getquestion() {
		return question;
	}

	
	public String getanswer() {
		return answer;
	}

	
	
	
	
}
