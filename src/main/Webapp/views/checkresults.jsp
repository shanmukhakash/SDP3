<%@page import="java.sql.*" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
try
{
	Connection con = null;
	Class.forName("com.mysql.jdbc.Driver");
	//System.out.println("Driver class loaded");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp3?characterEncoding=utf8","root","root");
	//System.out.println("Connection Established");
	
	PreparedStatement pstmt = con.prepareStatement("select * from applied_table");
	
	ResultSet rs = pstmt.executeQuery();
%>


<!DOCTYPE html>
<html>
<head>
<base href="//localhost:2075/updatestatus" />
<title>Check Results</title><meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="viewjobs.css" type="text/css" />
</head>

<body>

  <div class="topnavbar">
  <img src="img/Nav Bar Logo.png" class="toplogo">
  </div>
  <div class="bottomnavbar">
    <img src="img/Bottom Logo.png" class="bottomlogo">
  </div>


<h2 align="center">Check Results</h2>

<% 
	out.println("<center>");
	
	out.println("<form>");
	out.println("<fieldset style='width:100px' ;'height:50px'>"); 
	out.println("<table align=center width=900px height=100px border='1'>");
	%></center><%
	
	out.println("<tr>");
	out.println("<th>Student ID</th>");
	out.println("<th>Job ID</th>");
	out.println("<th>Job Title</th>");
	out.println("<th>Company Name</th>");
	out.println("<th>Status</th>");
	out.println("<th>Action</th>");
	out.println("</tr>");
	while(rs.next())
	{
		session.setAttribute("studid", rs.getInt(1));
	out.println("<tr>");
	out.println("<td align=center>"+rs.getInt(1)+"</td>");
	out.println("<td align=center>"+rs.getInt(3)+"</td>");
	out.println("<td align=center>"+rs.getString(4)+"</td>");
	out.println("<td align=center>"+rs.getString(2)+"</td>");
	out.println("<td align=center>"+rs.getString(6)+"</td>");
	out.println("<td align=center><a href='/updatestatus/"+rs.getInt(3)+"'>Change Status</a></td>");
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

  <br><br><br><br><br>
 <div class="nav" id="navbar">
            <nav class="nav__container">
                <div>
                    <a href="#" class="nav__link nav__logo">
                        <i class='bx bxs-disc nav__icon' ></i>
                        <span class="nav__logo-name">SAS</span>
                    </a>
    
                    <div class="nav__list">
                        <div class="nav__items">
                            <a href="/irphome" class="nav__link active">
                                <i class='bx bx-home nav__icon' ></i>
                                <span class="nav__name">Home</span>
                            </a>
                            
                            <div class="nav__dropdown">
                                <a href="#" class="nav__link">
                                    <i class='bx bx-user nav__icon' ></i>
                                    <span class="nav__name">Actions</span>
                                    <i class='bx bx-chevron-down nav__icon nav__dropdown-icon'></i>
                                </a>

                                <div class="nav__dropdown-collapse">
                                    <div class="nav__dropdown-content">
                                        <a href="/addStudent" class="nav__dropdown-item">Add Student</a><br>
                                        <a href="/addJob" class="nav__dropdown-item">Add Job Notification</a><br>
                                        <a href="/checkResults" class="nav__dropdown-item">Check Results</a><br>
                                        <a href="/viewstudents" class="nav__dropdown-item">View Students</a><br>
                                        <a href="/viewjobs" class="nav__dropdown-item">View Jobs</a><br>
                                        <a href="/viewqueries" class="nav__dropdown-item">View Queries</a><br>
                                    </div>
                                </div>
                            </div>
            </div>
    
                    </div>
                </div>

                <a href="/irplogout" class="nav__link nav__logout">
                    <i class='bx bx-log-out nav__icon' ></i>
                    <span class="nav__name">Log Out</span>
                </a>
            </nav>
        </div>
    
</html>  
</body>