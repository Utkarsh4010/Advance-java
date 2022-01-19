package com.inquiry.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inquiry.bean.Inquiry;
import com.inquiry.util.DbConnectionUtil;

 
@WebServlet("/create-inquiry")
public class CreateInquiry extends HttpServlet {
	 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String name=request.getParameter("name");
		 String contact=request.getParameter("contact");
		 String email=request.getParameter("email");
		 String city=request.getParameter("city");
		 String[] inqFor=request.getParameterValues("inqFor");
		 
		  Inquiry inq=new Inquiry();
		  inq.setName(name);
		  inq.setContact(contact);
		  inq.setCity(city);
		  inq.setEmail(email);
		  inq.setInqFor(String.join(",",inqFor));
		  Date currentDate = new Date(System.currentTimeMillis());
		  inq.setInqDate(currentDate);
		  
		  List<String>errors =DbConnectionUtil.validateInquiery(inq);
		  
		  if(errors.isEmpty()) {
			  boolean flag=model.save(inq);
			  
			  if(flag) {
				  response.sendRedirect("inquiery.jsp?c=201");
			  }else {
				  response.sendRedirect("inquiry.jsp?c=500");
			  }
		  }else {
			  request.setAttribute("errorList", errors);
			  RequestDispatcher dis=request.getRequestDispatcher("inquiry.jsp?c=501");
			  dis.forward(request, response);
		  }
		 }
		 
		 
		 
		 
	}

}
