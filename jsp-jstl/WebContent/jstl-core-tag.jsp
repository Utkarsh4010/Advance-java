 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
 <% 
    int a=10;
 out.print("Square: " + a*a);
 if(a>=10){
	 out.print("<h4>Hello</h4>");
 }
 
 for(int i=1; i<=10;i++){
	 out.print(i+"<br>");
 }
 %>
 
 <%
    String code="500";
    switch(code){
          case"201":
        	  out.print("<h4 style='color:green'>You have been logged out successfully</h4>");
        	  break;
        	  
          case"403":
        	  out.print("<h4 style='color:red'>Invalid user name or password</h4>");
        	  break;
        	  
          case"401":
        	  out.print("<h4 style='color:yellow; background-color:black'>Your session is expire .... please login again</h4>");
        	  break;
        			  
          case"500":
        	  out.print("<h4 style='color:yellow; background-color:black'>Something went wrong, please try again</h4>");
        	  break;
    }
 
 
 %>
 
 <%
   String skills[]={"Core java", "Jsp", "Servlet", "Html", "CSS", "js"};
   for(String s:skills){
	 out.print(s+"<br>");
 }
 
 %>
 
 
 
 <h3>===========JSTL===========</h3>
 
 <c:set var="b" value="20"></c:set>
 
 <c:out value="Square:${b*b}"></c:out>
 
<c:if test="${b>=10 }">
  <h4>Hello</h4>
</c:if>

<c:forEach var="i" begin="1" end="10" step="1">
   <c:out value="${i }"></c:out>
   <br>

</c:forEach>

<c:set var="msgCode" value="500"></c:set>
<c:choose>
     <c:when test="${msgCode eq '201' }">
              <h4 style='color:green'>You have been logged out successfully</h4>
     </c:when>
     
     <c:when test="${msgCode eq '403' }">
              <h4 style='color:red'>Invalid user name or password</h4>
     </c:when>
     
     <c:when test="${msgCode eq '401' }">
              <h4 style='color:red'>Your session is expire.... please login again</h4>
     </c:when>
     
     <c:when test="${msgCode eq '500' }">  
             <h4>Something went wrong, please try after some time</h4>
     </c:when>
     
     <c:otherwise>
             <h4>No cases matched</h4>
     </c:otherwise>
</c:choose>

<c:set var="name" value="Abc,Xyz,Lmn,Pqr,Demo"></c:set>
<c:forEach var="n" items="${name}">
     <c:out value="${n }"></c:out>
     <br>
</c:forEach>


















