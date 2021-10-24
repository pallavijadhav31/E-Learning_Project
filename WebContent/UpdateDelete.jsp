<%@ page import="java.sql.*" %>
<% 
		String CId=request.getParameter("id");
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/learning?characterEncoding=latin1","root","root");
		pst=con.prepareStatement("delete from course where course_id=?");
		pst.setString(1, CId);
		pst.executeUpdate();
		response.sendRedirect("Course.jsp");
%>
	<script> alert("Resource Updated!!!!!!!")</script>
	
<html>
<head></head>
<body>
		<a href="Course.jsp">Click back</a>
</body>
</html>