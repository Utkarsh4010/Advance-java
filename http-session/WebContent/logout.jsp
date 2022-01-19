 <% 
    session.invalidate();//destroy a session
    response.sendRedirect("login.jsp?code=201");
 
 
 %>