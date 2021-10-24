<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% 
	if(request.getParameter("submit")!=null){
		String Cname=request.getParameter("cname");
		String Cdesc=request.getParameter("cdesc");
		String Cfee=request.getParameter("cfee");
		String Cres=request.getParameter("cfeed");
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/learning?characterEncoding=latin1","root","root");
		pst=con.prepareStatement("insert into learning.course(name, desp, fee, feedback) values(?,?,?,?)");
		pst.setString(1, Cname);
		pst.setString(2, Cdesc);
		pst.setString(3, Cfee);
		pst.setString(4, Cres);
		pst.executeUpdate();
	%>
	
	<script> alert("Resource Added!!!!!!!")</script>
	
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
		<li><a href="Admin.jsp">Admin</a></li>
		<li><a href="Feedbackinfo.jsp">Feedback Info</a></li>
		<li><a href="Userinfo.jsp">Users Info</a></li>
		<li><a href="Course.jsp">Courses Info</a></li>
	</ul>
	
	<div class="row" style="margin-top: 100px">
	<h1>Course Details</h1>
	<br>
		<div class="col-sm-4">
			<form action="#" method="POST">
				<div align="left">
					<label class="form-label">Course Name:</label>
					<input type="text" name="cname" placeholder="Enter Course Name" class="form-control" id="cname" required>
				</div>
			
				<div align="left">
					<label class="form-label">Course Description:</label>
					<input type="text" name="cdesc" placeholder="Enter Course Description" class="form-control" id="cdesc" required>
				</div>
				
				<div align="left">
					<label class="form-label">Course Fee:</label>
					<input type="text" name="cfee" placeholder="Enter Course Fee" class="form-control" id="cfee" required>
				</div>
				
				<div align="left">
					<label class="form-label">Course Feedback:</label>
					<input type="text" name="cfeed" placeholder="Enter Course Feedback" class="form-control" id="cfeed" required>
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
				
						<tr>
							<th>Course Name</th>
							<th>Course Description</th>
							<th>Course Fee</th>
							<th>Course Resources</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>

					<%
						Connection con;
						PreparedStatement pst;
						ResultSet rs;
						Class.forName("com.mysql.jdbc.Driver");
						con = DriverManager.getConnection("jdbc:mysql://localhost:3306/learning?characterEncoding=latin1", "root", "root");
						
						String query="select * from course";
						Statement st= con.createStatement();
						rs=st.executeQuery(query);
						while(rs.next()){
							String id=rs.getString("course_id");
						
					%>

					<tr>
							<td><%=rs.getString("name")%></td>
							<td><%=rs.getString("desp")%></td>
							<td><%=rs.getString("fee")%></td>
							<td><%=rs.getString("feedback")%></td>
							<td><a href="updateEdit.jsp?id=<%=id%>">Edit</a></td>
							<td><a href="UpdateDelete.jsp?id=<%=id%>">Delete</a></td>
						</tr>
					<%
						}
					
					%>	
						
						
				</table>
			</div>
		
		</div>
	</div>
</body>
</html>