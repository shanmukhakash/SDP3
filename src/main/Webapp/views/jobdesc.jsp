<%@page import="java.sql.*" %>
<%@ page import="java.util.*, java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
try
{
	int jid = (int)session.getAttribute("jid");
	Connection con = null;
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp3?characterEncoding=utf8","root","root");
	PreparedStatement pstmt = con.prepareStatement("select * from jobs_table where job_id=?");
	pstmt.setInt(1,jid);
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<base href="//localhost:2075/applyjob" />
<title>Job Description</title><meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="jobdesc.css" type="text/css" />
</head>

<body>

  <div class="topnavbar">
  <img src="img/Nav Bar Logo.png" class="toplogo">
  </div>
  <div class="bottomnavbar">
    <img src="img/Bottom Logo.png" class="bottomlogo">
  </div>


<h2 align="center">View Job Criteria</h2>
<br>
<%
if(rs.next())
{ 
%>
<center>

  <form method="POST" action="/applied/${jid}" >
  <fieldset style="width:100px" ;"height:50px"> 
  <table align=center width=500px height=300px>
  <tr>
  <td><h4>Job ID: &nbsp;&nbsp;&nbsp;&nbsp;<%=jid %></h4></td>
  </tr>
  
  <tr>
  <td><h2><%=rs.getString(2) %></h2><hr></td>
  </tr>

    <tr>
  <td><h4>OPENING OVERVIEW<hr><hr></h4></td>
  </tr>
  
    <tr>
  <td>Salary Per Annum : <%=rs.getDouble(7) %><hr><br></td>
  </tr>
  
  <tr>
  <td>No.Of Openings : <%=rs.getInt(13) %><hr><br></td>
  </tr>
  
  
    <tr>
  <td><h4>JOB DESCRIPTION<hr><hr></h4>
  <%=rs.getString(3) %>
  <br></td>
  </tr>
  
  <tr>
  <td><h4>ELIGIBILITY<hr><hr></h4>
  </td>
  </tr>
  
   <tr>
  <td>SSC Minimum: <%=rs.getDouble(11) %><hr><br></td>
  </tr>
  
    <tr>
  <td>Inter Minimum: <%=rs.getDouble(10) %><hr><br></td>
  </tr>
  
  <tr>
  <td>Btech (CGPA): <%=rs.getDouble(9) %><hr><br></td>
  </tr>
  
  <tr>
  <td>Minimum Backlogs: <%=rs.getInt(12) %><hr><br></td>
  </tr>
  
  <tr>
  <td><h4>REQUIRED SKILLS<hr><hr></h4>
  <%=rs.getString(5) %>
  <br><br></td>
  </tr>
  
  
   <tr>
  <td>UPLOAD RESUME:&nbsp;&nbsp;&nbsp;<input type="file" name="resume" value="Add" Required><br><br></td>
  </tr>
  
  <%
  
  int studid = (int)session.getAttribute("studid");
  PreparedStatement pstmt1 = con.prepareStatement("select student_ssc,student_inter,student_cgpa,student_backlogs from student_table where student_id=?");
  pstmt1.setInt(1,studid);
  ResultSet rs1 = pstmt1.executeQuery();
  if(rs1.next())
  {
  Double ssc = rs1.getDouble("student_ssc");
  Double inter = rs1.getDouble("student_inter");
  Double cgpa = rs1.getDouble("student_cgpa");
  int backlogs = rs1.getInt("student_backlogs");
  
  if(ssc>=rs.getDouble(11) && inter>=rs.getDouble(10) && cgpa>=rs.getDouble(9) && backlogs<=rs.getInt(12))
  {
	  out.println("<tr>");
	  out.println("<td align =center><input type='submit' value='APPLY NOW'></td>");
	  out.println("</tr>");
  }
  else if(ssc==0.0 || inter==0.0 )
  {
	  out.println("<tr>");
	  out.println("<td align =center>Profile Not Updated Yet!</td>");
	  out.println("</tr>");
  }
  else
  {
	  out.println("<tr>");
	  out.println("<td align =center>Not Eligible</td>");
	  out.println("</tr>");
  }
  
  }
  %>
  
  

  </table>
  </fieldset>
  </form>
  </center>
  <%
  con.close();
  }
}
  catch(Exception e)
  {
  	out.println(e);
  }
  %>
  <br><br><br><br>
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

                <a href="/studlogin" class="nav__link nav__logout">
                    <i class='bx bx-log-out nav__icon' ></i>
                    <span class="nav__name">Log Out</span>
                </a>
            </nav>
        </div>
    
</html>  
</body>