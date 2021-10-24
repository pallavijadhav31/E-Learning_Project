<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
	
	<% 
	if(request.getParameter("submit")!=null){
		String s=request.getParameter("username");
		String Mess=request.getParameter("password");
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/learning?characterEncoding=latin1","root","root");
		pst=con.prepareStatement("select user_id from user where user_name=?");
		pst.setString(1, s);
		pst.executeQuery();
	
	}
	%>
		    		
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
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<ul>
  <li><a class="active" href="Home.jsp">Home</a></li>
  <li><a href="ConnectMentor.jsp">Connect with the Mentor</a></li>
  <li> <a href="EnrollCourses.jsp">Enroll the Courses</a></li>
  <li><a href="GiveFeedback.jsp">Give Feedback</a>></li>
	</ul>

  <!-- <a href="Home.jsp">Home</a>
  <a href="ConnectMentor.jsp">Connect with the Mentor</a>
  <a href="EnrollCourses.jsp">Enroll the Courses</a>
  <a href="GiveFeedback.jsp">Give Feedback</a>
   -->
  		<div style="margin-top: 200px">
			<form action="#" method="POST" class="card" style="margin-left: 200px">
			<h1>User Login</h1>
				<div align="left">
					<label class="form-label">User Name:</label>
					<input type="text" name="username" placeholder="Enter Your Username" class="form-control" id="username" required>
				</div>
			
				<div align="left">
					<label class="form-label">User Password:</label>
					<input type="password" name="password" placeholder="Enter Your Password" class="form-control" id="password" required>
				</div>
				
				<div align="left">
					<input type="submit" name="submit" value="Submit" class="form-control" id="submit" required>
				</div>
			</form>
		</div>
</body>
</html>