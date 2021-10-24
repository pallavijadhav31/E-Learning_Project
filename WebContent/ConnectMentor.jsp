<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% 
	if(request.getParameter("submit")!=null){
		String UID=request.getParameter("ui");
		String Mess=request.getParameter("umess");
		String CID=request.getParameter("cid");
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/learning?characterEncoding=latin1","root","root");
		pst=con.prepareStatement("update learning.contact set message=? where contact_id=?");
		pst.setString(1, Mess);
		pst.setString(2, CID);
		pst.executeUpdate();
	%>

	<script> alert("Message Updated!!!!!!!")</script>
	
	<% 
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
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	
	<ul>
  <li><a class="active" href="Home.jsp">Home</a></li>
  <li> <a href="EnrollCourses.jsp">Enroll the Courses</a></li>
  <li><a href="GiveFeedback.jsp">Give Feedback</a>></li>
	</ul>
	
	<div class="row" style="margin-top: 100px">
				
		<div class="col-sm-4">
			<form action="#" method="POST">
				<div align="left">
					<label class="form-label">Contact ID:</label>
					<input type="text" name="cid" placeholder="Enter Contact ID" class="form-control" id="cid">
				</div>
				<div align="left">
					<label class="form-label">User ID:</label>
					<input type="text" name="ui" placeholder="Enter User ID" class="form-control" id="ui">
				</div>
				<div align="left">
					<label class="form-label">Contact Name:</label>
					<input type="text" name="uname" placeholder="Enter Contact Name" class="form-control" id="uname">
				</div>
				<div align="left">
					<label class="form-label">Message from User:</label>
					<input type="text" name="umess" placeholder="Enter Message" class="form-control" id="umess">
				</div>
				<br>
				<div align="left">
					<input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
					<input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
				</div>	
			</form>
		</div>
		<div class="col-sm-8">
		
			<div class="panel-body">
				<table id="tbl-cname" class="table table-responsive table-bordered" cellpadding="0" width="100%">
					<thread>
						<tr>
							<th>Contact Name</th>
							<th>Contact Email</th>
							<th>Contact Phone_No</th>
							<th>Contact ID</th>
						</tr>
						<%
					Connection con;
					PreparedStatement pst;
					ResultSet rs;
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/learning?characterEncoding=latin1", "root", "root");
					pst=con.prepareStatement("select * from learning.contact");
					rs=pst.executeQuery();
					while(rs.next()){
					%>
					<tr>
							<td><%=rs.getString("name")%></td>
							<td><%=rs.getString("email")%></td>
							<td><%=rs.getString("phone_no")%></td>
							<td><%=rs.getString("contact_id")%></td>
						</tr>
					<% } %>
				</table>
			</div>
		</div>
	</div>
</body>
</html>