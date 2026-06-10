package com.example.project1.Entity;

import java.sql.Date;

public class UserEntity {
	 private int id;
	    private String fullName;
	    private String email;
	    private String password;
	    private String bloodGroup;
	    private String city;
	    private String phone;
	    private Date lastDonationDate;
	    private String role;

	    public UserEntity() {}

	    public UserEntity(int id, String fullName, String email,
	            String password, String bloodGroup,
	            String city, String phone,
	            Date lastDonationDate, String role) {

	        this.id = id;
	        this.fullName = fullName;
	        this.email = email;
	        this.password = password;
	        this.bloodGroup = bloodGroup;
	        this.city = city;
	        this.phone = phone;
	        this.lastDonationDate = lastDonationDate;
	        this.role = role;
	    }

	    public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }

	    public String getFullName() {
	        return fullName;
	    }

	    public void setFullName(String fullName) {
	        this.fullName = fullName;
	    }

	    public String getEmail() {
	        return email;
	    }

	    public void setEmail(String email) {
	        this.email = email;
	    }

	    public String getPassword() {
	        return password;
	    }

	    public void setPassword(String password) {
	        this.password = password;
	    }

	    public String getBloodGroup() {
	        return bloodGroup;
	    }

	    public void setBloodGroup(String bloodGroup) {
	        this.bloodGroup = bloodGroup;
	    }

	    public String getCity() {
	        return city;
	    }

	    public void setCity(String city) {
	        this.city = city;
	    }

	    public String getPhone() {
	        return phone;
	    }

	    public void setPhone(String phone) {
	        this.phone = phone;
	    }

	    public Date getLastDonationDate() {
	        return lastDonationDate;
	    }

	    public void setLastDonationDate(Date lastDonationDate) {
	        this.lastDonationDate = lastDonationDate;
	    }

	    public String getRole() {
	        return role;
	    }

	    public void setRole(String role) {
	        this.role = role;
	    }
}
