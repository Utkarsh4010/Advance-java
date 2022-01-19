 <%="Hello This is from expression tag"%>  //expression tag
 
 <%!//declaration tag
 int b=20;//instance variable
 static int c=30;//static/class variable
 public void display(){
	 System.out.println("Display method in JSP page");
 }
  %>
  
  <%
  display();
  int a=20;//local variable
  if(a>=0){
	  System.out.println("a=0");
  }else{
	  System.out.println("a!=0");
  }
  
  
  %>
  
  <br>
  
  <%=a*a %>  //scriplet tag
 