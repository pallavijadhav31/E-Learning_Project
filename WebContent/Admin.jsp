<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
body {margin:0;}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
  position: fixed;
  top: 0;
  width: 100%;
}
li {
  float: left;
}
li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
li a:hover:not(.active) {
  background-color: #111;
}
.active {
  background-color: #04AA6D;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/AdminCSS.css" rel="stylesheet"></link>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

	<ul>
		<li><a class="active" href="Home.jsp">Home Page</a></li>
		<li><a href="Feedbackinfo.jsp">Feedback Info</a></li>
		<li><a href="Userinfo.jsp">Users Info</a></li>
		<li><a href="Contactinfo.jsp">Contact Info</a></li>
		<li><a href="Course.jsp">Courses Info</a></li>
	</ul>

	<h5>${errorMessage}</h5>
	<div style="margin-left: 500px">
	<form method="POST" action="AdminServlet" style="margin-top: 100px">
	<h1 style="font-style: inherit;">Admin Login</h1><br>
	<p> Admin_ID   :<input type="text" name="adminid" placeholder="Enter Your ID"> </p>
	<p> Admin_Name :<input type="text" name="adminname" placeholder="Enter Your Name"></p>
	<p> Admin_Email:<input type="email" name="adminemail" placeholder="Enter Your mail"></p>
	<p> Password   :<input type="password" name="adminpass" placeholder="Enter Password"></p>
	<p><input type="submit" value="Log In"></p>
	</form>
	</div>
</body>
</html>