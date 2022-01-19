package com.inquiry.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import com.inquiry.bean.Inquiry;
 

public final class DbConnectionUtil {
	private static final String driverName="com.mysql.cj.jdbc.Driver";
	private static final String url="jdbc:mysql://localhost:3306/fsd27sept";
	private static final String userName="root";
	private static final String password="Root";
	
	public static final Connection getConnection() {
		try {
			Class.forName(driverName);
			Connection con = DriverManager.getConnection(url, userName, password);
			return con;
		}catch(Exception e) {
			return null;
		}
	}
	public static final void closeConnection(Connection connection) {
		try {
			connection.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public final static List<String>validateInquiry(Inquiry inquiry){
		List<String>errors=new ArrayList<String>();
		ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
		Validator validator=factory.getValidator();
		Set<ConstraintViolation<inquiry>>constraintViolations=validator.validate(inquiry);
		if(constraintViolations.size()>0) {
			for(ConstraintViolation<inquiry>violation:constraintViolations) {
				errors.add(violation.getMessage());
			}
		}
		return errors;
	}

}

