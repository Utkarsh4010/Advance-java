<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <%@ include file="menu.jsp" %>
   
   <div align="center">
     <table border="1">
       <thead>
         <tr>
           <th>Name</th>
           <th>Email</th>
           <th>Contact</th>   
           <th>City</th>
           <th>Inquiry For</th>
           <th>Inquiry On</th>
           <th>Action</th>      
         </tr>
       </thead>
       
       <tbody>
          <c:forEach var="inq" items="${requestScope.inqList}">
              <tr>
                 <td>${inq.name}</td>
                 <td>${inq.email}</td>
                 <td>${inq.contact}</td>
                 <td>${inq.city}</td>
                 <td>${inq.inqFor}</td>
                 <td>${inq.inqDate}</td>
                 <td><a href="#?id=${inq.id}">Edit</a>/<a href="#?id=${inq.id}" >Delete</a></td>
              
              </tr>
          
          </c:forEach>
       
       </tbody>
     
     </table>
   
   
   </div>

</body>
</html>