<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inquiry form</title>
</head>
<body>
<%@ include file="menu.jsp" %>

<div align="center">
      <h3>Inqiry Form</h3>
      
      <c:choose>
           <c:when test="${param.c eq '201'}">
           <h4 style="color:green">Inquiry Created Successfully</h4>
           </c:when>
           
           <c:when test=${param.c eq '500'}>
            <h4 style="color:red">Something went wrong, please try after some time</h4>
            </c:when>
            
            <c:when test=${param.c eq '501'}>
               <c:forEach var="msg" items="${requestScope.errorList }">
               <span style="color:red;">${msg}</span>
             </c:forEach>
            </c:when>
      
      
      </c:choose>


<form action="createinquiry">
 

   Enter Name:<input name="name" placeholder="Enter name"><br><br>
   Enter Contact:<input name="contact" placeholder="Enter Contact"><br><br>
   Enter Email:<input name="email" placeholder="Enter Email"><br><br>
   Enter City:<input name="city" placeholder="Enter City"><br><br>
   Inquiry For:
      <input type="checkbox" name="inqfor" value="Java">Java
      <input type="checkbox" name="inqfor" value="FSD-Java">FSD-Java
      <input type="checkbox" name="inqfor" value="Python">Python<br><br>
      <input type="checkbox" name="inqfor" value="Testing">Testing
      <input type="checkbox" name="inqfor" value="FSD-Python">FSD-Python
      <input type="checkbox" name="inqfor" value="ASP.Net">ASP.Net
      <br><br>
      <button type="submit">Save-Details</button>
      <button type="reset">Reset</button>


</form>
</div>

</body>
</html>