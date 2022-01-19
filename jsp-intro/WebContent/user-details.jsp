<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User details</title>
<script type="text/javascript">
alert("Test JS code");
</script>


<style type="text/css">
.details_dev{
background-color:red;
}
</style>

</head>
<body>
<div class="details_div">
<form action="preview-details">
Enter First Name:<input type="text" name="fname"><br><br>
Enter Middle Name:<input type="text" name="mname"><br><br>
Enter Last Name:<input type="text" name="lname"><br><br>
Enter Contact:<input type="text" name="contact"><br><br>
Enter Email:<input type ="text" name="email"><br><br>
Select gender:<select name="gender">
                    <option value="M">Male</option>
                    <option value="F">Female</option>
                    <option value="O">Other</option>
              </select><br><br>
              
              <button type="submit">Preview</button>

</form>
</div>

</body>
</html>