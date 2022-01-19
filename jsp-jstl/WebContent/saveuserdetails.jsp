<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<c:catch var="e">
   
   
   <s:setDataSource var="con"
       driver="com.mysql.cj.jdbc.Driver"
       url="jdbc:mysql://localhost:3306/fsd27sept"
       user="root"
       password="Root"/>
       
       
   <s:update dataSource="${con}" var="count" sql="insert into employee values(0,?,?,?)">
   
       <s:param value="${param.name }"></s:param>
       <s:param value="${param.email }"></s:param>
       <s:param value="${param.pass }"></s:param>
       
       
   </s:update>
   
   <c:redirect url="jstl-sql-tag.jsp?code=200"></c:redirect>





</c:catch>