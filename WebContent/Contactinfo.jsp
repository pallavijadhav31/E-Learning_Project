<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
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
<title>Insert title here</title>
</head>
<body>
	
	<ul>
		<li><a class="active" href="Home.jsp">Home</a></li>
		<li><a href="Admin.jsp">Admin</a></li>
		<li><a href="Feedbackinfo.jsp">Feedback Info</a></li>
		<li><a href="Userinfo.jsp">Users Info</a></li>
		<li><a href="Course.jsp">Courses Info</a></li>
	</ul>

	<div class="panel-body" style="margin-top: 100px">
		<h1>Feedback Information</h1>
				<table id="tbl-cname" class="table table-responsive table-bordered" cellpadding="0" width="100%">
						<tr>
							<th>Contact Name</th>
							<th>Contact Email</th>
							<th>Contact Phone No</th>
							<th>Message</th>
							<th>Contact ID</th>
						</tr>
					<%
						Connection con;
						PreparedStatement pst;
						ResultSet rs;
						Class.forName("com.mysql.jdbc.Driver");
						con = DriverManager.getConnection("jdbc:mysql://localhost:3306/learning?characterEncoding=latin1", "root", "root");
						
						String query="select * from contact";
						Statement st= con.createStatement();
						rs=st.executeQuery(query);
						while(rs.next()){	
					%>
					<tr>
							<td><%=rs.getString("name")%></td>
							<td><%=rs.getString("email")%></td>
							<td><%=rs.getString("phone_no")%></td>
							<td><%=rs.getString("message")%></td>
							<td><%=rs.getString("contact_id")%></td>
						</tr>
					<%
						}
					
					%>					
				</table>
			</div>
</body>
</html>