<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% 
	if(request.getParameter("submit")!=null){
		String CId=request.getParameter("id");
		String Cname=request.getParameter("cname");
		String Cdesc=request.getParameter("cdesc");
		String Cfee=request.getParameter("cfee");
		String Cres=request.getParameter("cfeed");
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/learning?characterEncoding=latin1","root","root");
		pst=con.prepareStatement("update course set name=?, desp=?, fee=?, feedback=? where course_id=?");
		pst.setString(1, Cname);
		pst.setString(2, Cdesc);
		pst.setString(3, Cfee);
		pst.setString(4, Cres);
		pst.setString(5, CId);
		pst.executeUpdate();
	%>
	
	<script> alert("Resource Updated!!!!!!!")</script>
	
	<% 
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<h1>Update Data</h1>
	<div class="row">
		<div class="col-sm-4">
			<form action="#" method="POST">
				<%
					Connection con;
					PreparedStatement pst;
					ResultSet rs;
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/learning?characterEncoding=latin1", "root", "root");
					String id=request.getParameter("id");
					pst=con.prepareStatement("select * from course where course_id=?");
					pst.setString(1, id);
					rs=pst.executeQuery();
					while(rs.next()){
						
				%>
				<div align="left">
					<label class="form-label">Course Name:</label>
					<input type="text" name="cname" placeholder="Enter Course Name" value="<%=rs.getString("name")%>" class="form-control" id="cname" required>
				</div>
			
				<div align="left">
					<label class="form-label">Course Description:</label>
					<input type="text" name="cdesc" placeholder="Enter Course Description" value="<%=rs.getString("desp")%>" class="form-control" id="cdesc" required>
				</div>
				
				<div align="left">
					<label class="form-label">Course Fee:</label>
					<input type="text" name="cfee" placeholder="Enter Course Fee" value="<%=rs.getString("fee")%>" class="form-control" id="cfee" required>
				</div>
				
				<div align="left">
					<label class="form-label">Course Feedback:</label>
					<input type="text" name="cfeed" placeholder="Enter Course Feedback" value="<%=rs.getString("feedback")%>" class="form-control" id="cfeed" required>
				</div>
				
				<%
					}
				%>
				<br>
				<div align="right">
					<input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
					<input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
				</div>
				
				<div align="right">
					<p><a href="Course.jsp">Click Back-></a></p>
				</div>
				
			</form>
		</div>
	</div>
</body>
</html>