<%

String name= request.getParameter("uname");
String pass=request.getParameter("pass");

if("admin".equals(name) && "admin123".equals(pass)){
	RequestDispatcher dis=request.getRequestDispatcher("home.jsp");
	dis.forward(request,response);
}else{
	response.sendRedirect("login.jsp?msg=invalidUser");
}

%>