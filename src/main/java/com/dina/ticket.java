package com.dina;

public class ticket {
	//private int id;
	private String ticketID;
    private String firstName;
    private String lastName;
    private String email;
    private String facultySchool;
    private String contactNumber;
    private String requestInquiryType;
    private String inquirySubject;
    private String message;
    
    public ticket(String ticketID, String firstName, String lastName, String email, String facultySchool, String contactNumber, String requestInquiryType, String inquirySubject, String message) {
    super();
    //this.id = id;
    this.ticketID = ticketID;
	this.firstName = firstName;
	this.lastName = lastName;
	this.email = email;
	this.facultySchool = facultySchool;
	this.facultySchool = facultySchool;
	this.contactNumber = contactNumber;
	this.requestInquiryType = requestInquiryType;
	this.inquirySubject = inquirySubject;
	this.message = message;
    }
    
	/*
	 * public int getId() { return id; }
	 */
    public String getticketID() {
        return ticketID;
    }

    public String getfirstName() {
        return firstName;
    }
    
    public String getlastName() {
        return lastName;
    }

    public String getemail() {
        return email;
    }

    public String getfacultySchool() {
        return facultySchool;
    }

    public String getcontactNumber() {
        return contactNumber;
    }

    public String getrequestInquiryType() {
        return requestInquiryType;
    }
    
    public String getinquirySubject() {
        return inquirySubject;
    }
    
    public String getmessage() {
        return message;
    }
    

}
