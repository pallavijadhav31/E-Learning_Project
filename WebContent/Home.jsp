<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<% 
	if(request.getParameter("submit")!=null){
		String Uname=request.getParameter("username");
		String Uphone=request.getParameter("phone");
		String UEmail=request.getParameter("Email");
		String Uadd=request.getParameter("address");
		String Udate=request.getParameter("date");
		String Upass=request.getParameter("password");
		
		Connection con=null;
		PreparedStatement pst;
		ResultSet rs;
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/learning?characterEncoding=latin1","root","root");
		pst=con.prepareStatement("insert into user(user_name, user_phone, user_email, user_address, reg_date, password) values(?,?,?,?,?,?)");
		pst.setString(1, Uname);
		pst.setString(2, Uphone);
		pst.setString(3, UEmail);
		pst.setString(4, Uadd);
		pst.setString(5, Udate);
		pst.setString(6, Upass);
		pst.executeUpdate();
	}
%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learn Learn</title>
<link href="css/HomeCSS.css" rel="stylesheet"></link>
</head>
<body class="bd" background="photosImg/elearning.jpg">
<div align="center" class="loginbox">
	<h1>Register Here</h1>
	<form action="#" method="POST">
	<p> User Name   :<input type="text" name="username" placeholder="Enter Your Name"> </p>
	<p> Phone Number :<input type="text" name="phone" placeholder="Enter Phone No"></p>
	<p> Email        :<input type="email" name="Email" placeholder="Enter Your mail"></p>
	<p> Address      :<input type="text" name="address" placeholder="Enter Your address"></p>
	<p> Reg_Date     :<input type="date" name="date" placeholder="date"></p>
	<p> Password     :<input type="password" name="password" placeholder="Enter Password"></p>
	<p><input type="submit" id="submit" value="submit" name="submit"></p>
	<a href="NewUser.jsp">After Registration OR already have an account ?</a><br>
	<br>
	<a href="Admin.jsp"> Are you Admin ? </a><br>
	</form>
</div>
</body>
</html>