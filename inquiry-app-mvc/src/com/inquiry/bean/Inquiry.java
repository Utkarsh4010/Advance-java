package com.inquiry.bean;

import java.util.Date;

public class Inquiry {
   private int id;
   private String name;
   private String city;
   private String contact;
   private String email;
   private String inqFor;
   private Date inqDate;
 
public int getId() {
	return id;
}
 
public void setId(int id) {
	this.id = id;
}
 
public String getName() {
	return name;
}
 
public void setName(String name) {
	this.name = name;
}
 
public String getCity() {
	return city;
}
 
public void setCity(String city) {
	this.city = city;
}
 
public String getContact() {
	return contact;
}
/**
 * @param contact the contact to set
 */
public void setContact(String contact) {
	this.contact = contact;
}
 
public String getEmail() {
	return email;
}
 
public void setEmail(String email) {
	this.email = email;
}
 
public String getInqFor() {
	return inqFor;
}
 
public void setInqFor(String inqFor) {
	this.inqFor = inqFor;
}
 
public Date getInqDate() {
	return inqDate;
}
 
public void setInqDate(Date inqDate) {
	this.inqDate = inqDate;
}
   
   
}
