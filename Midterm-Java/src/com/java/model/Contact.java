package com.java.model;

public class Contact {
	public String name;
	public String email;
	public String subject;
	public String message;
	
	public String add() {
		return String.format("INSERT INTO feedback VALUES (null, '%s', '%s', '%s', '%s')", 
				this.name, this.email, this.subject, this.message
		);
	}
}
