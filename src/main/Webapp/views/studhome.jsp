<%@page import="java.sql.*" %>
<%@ page import="java.util.*, java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
try
{
	Connection con = null;
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp3?characterEncoding=utf8","root","root");
	PreparedStatement pstmt = con.prepareStatement("select * from jobs_table");
	ResultSet rs = pstmt.executeQuery();
%>


<!DOCTYPE html>
<html>
<head>
<title>Student Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
<link rel="stylesheet" href="studhome.css" type="text/css" />
</head>

<body>

	<div class="topnavbar">
		<img src="img/Nav Bar Logo.png" class="toplogo">
	</div>
	<div class="bottomnavbar">
		<img src="img/Bottom Logo.png" class="bottomlogo">
	</div>

<br><br>
<h2 align="center">Job Notifications</h2>

 <% 
	out.println("<center>");
	
	out.println("<form >");
	out.println("<fieldset style='width:100px' ;'height:50px'>"); 
	out.println("<table align=center width=1000px height=100px border='1'>");
	%></center><%
	
	out.println("<tr>");
	out.println("<th>Job ID</th>");
	out.println("<th>Company Name</th>");
	out.println("<th>Job Title</th>");
	out.println("<th>Description</th>");
	out.println("<th>Recruitment Date</th>");
	out.println("<th>Action</th>");
	out.println("</tr>");
	while(rs.next())
	{
		int jid = rs.getInt(1);
	out.println("<tr>");
	out.println("<td align=center>"+rs.getInt(1)+"</td>");
	out.println("<td align=center>"+rs.getString(2)+"</td>");
	out.println("<td align=center>"+rs.getString(8)+"</td>");
	out.println("<td align=center>"+rs.getString(3)+"</td>");
	out.println("<td align=center>"+rs.getString(4)+"</td>");
	out.println("<td align=center><a href='/applyjob/"+jid+"'>Proceed</a></td>");
	out.println("</tr>");
	}
	out.println("</table>");
	out.println("</fieldset>");
	out.println("</form>");
       
       %>
       <%con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
	<div class="nav" id="navbar">
		<nav class="nav__container">
			<div>
				<a href="#" class="nav__link nav__logo"> <i
					class='bx bxs-disc nav__icon'></i> <span class="nav__logo-name">SAS</span>
				</a>

				<div class="nav__list">
					<div class="nav__items">
						<a href="/studhome" class="nav__link active"> <i
							class='bx bx-home nav__icon'></i> <span class="nav__name">Home</span>
						</a>

						<div class="nav__dropdown">
							<a href="#" class="nav__link"> <i
								class='bx bx-user nav__icon'></i> <span class="nav__name">Actions</span>
								<i class='bx bx-chevron-down nav__icon nav__dropdown-icon'></i>
							</a>

							<div class="nav__dropdown-collapse">
								<div class="nav__dropdown-content">
									<a href="/studhome" class="nav__dropdown-item">Available Jobs</a><br>
									<a href="/appliedstatus" class="nav__dropdown-item">Applied Status</a><br>
									 <a href="/studprofile" class="nav__dropdown-item">My Profile</a><br>
                                        <a href="/changepwd" class="nav__dropdown-item">Change Password</a><br>
                                        <a href="/queries" class="nav__dropdown-item">Queries</a><br>
								</div>
							</div>
						</div>


					</div>

				</div>
			</div>

			<a href="/studlogout" class="nav__link nav__logout"> <i
				class='bx bx-log-out nav__icon'></i> <span class="nav__name">Log
					Out</span>
			</a>
		</nav>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
</html>
</body>