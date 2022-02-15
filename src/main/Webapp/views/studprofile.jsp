<%@page import="java.sql.*" %>
<%@ page import="java.util.*, java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
try
{
	int id = (int)session.getAttribute("studid");
	Connection con = null;
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp3?characterEncoding=utf8","root","root");
	PreparedStatement pstmt = con.prepareStatement("select * from student_table where student_id=?");
	pstmt.setInt(1,id);
	ResultSet rs = pstmt.executeQuery();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SAS | Student Profile</title>
    <link rel="stylesheet" href="sprofile.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  
</head>
<body>


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
    

  <div class="topnavbar">
  <img src="img/Nav Bar Logo.png" class="toplogo">
  </div>
  <div class="bottomnavbar">
    <img src="img/Bottom Logo.png" class="bottomlogo">
  </div>
  
  <div class="container rounded bg-white mt-5 mb-5">
        <div class="row">
            <div class="col-md-3 border-right">
      &nbsp;&nbsp;&nbsp;
                <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                <%if(rs.next()){
                	%>
        <input type="file" id="myFile" name="jlogo"><br><span class="font-weight-bold">
        <h6>Upload your profile photo</h6></div>
            </div>
            <div class="col-md-5 border-right">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4 class="text-right">Student Details<hr></h4>
                    </div>
                    
                    <div class="row mt-3">
        
        <div class="col-md-12"><label class="labels"> <h6><b>Student ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getInt(1) %></b></h6><br></label></div>
        <div class="col-md-12"><label class="labels"> <h6><b>Student Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(7) %>&nbsp;&nbsp;<%=rs.getString(12) %></b></h6><br></label></div>
                <div class="col-md-12"><label class="labels"> <h6><b>College Email ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(4) %></b></h6><br></label></div>
              <div class="col-md-12"><label class="labels"> <h6><b>Department&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(5) %></b></h6><br></label></div>
              <div class="col-md-12"><label class="labels"> <h6><b>BackLogs Count&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getInt(2) %></b></h6><br></label></div>
              <div class="col-md-12"><label class="labels"> <h6><b>Specialization&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(21) %></b></h6><br></label></div>
              <div class="col-md-12"><label class="labels"> <h6><b>Father Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(6) %></b></h6><br></label></div>
              <div class="col-md-12"><label class="labels"> <h6><b>Mother Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(13) %></b></h6><br></label></div>
              <div class="col-md-12"><label class="labels"> <h6><b>Year&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getInt(24) %></b></h6><br></label></div>
              <div class="col-md-12"><label class="labels"> <h6><b>Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(8) %></b></h6><br></label></div>
               <div class="col-md-12"><label class="labels"> <h6><b>CGPA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getInt(3) %></b></h6><br></label></div>
               <div class="col-md-12"><label class="labels"> <h6><b>Languages Known&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(11) %></b></h6><br></label></div>
               <div class="col-md-12"><label class="labels"> <h6><b>Phone Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(15) %></b></h6><br></label></div>
               <div class="col-md-12"><label class="labels"> <h6><b>Personal Mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(17) %></b></h6><br></label></div>
               <div class="col-md-12"><label class="labels"> <h6><b>Projects&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(18) %></b></h6><br></label></div>
               <div class="col-md-12"><label class="labels"> <h6><b>Skills&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(20) %></b></h6><br></label></div>
               <div class="col-md-12"><label class="labels"> <h6><b>SSC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getDouble(22) %></b></h6><br></label></div>
               <div class="col-md-12"><label class="labels"> <h6><b>Inter&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getDouble(9) %></b></h6><br></label></div>
              
                        </div>
                       <div class="row mt-4">
                        </div>
                    <div class="row mt-3">
                        <div class="col-md-6"><tr>
                            
                            
                          </tr></div>
                        </br>
                          </div>
                  
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="p-3 py-5">
                        <div class="d-flex justify-content-between align-items-center experience"><span>Personal Details</span></div><br>
                        <form method="post" action="/updateprofile">
      <div class="col-md-12"><label class="labels">Languages Known:</label><input type="text" name="lang" class="form-control" placeholder="Enter Languages Known" value=""></div>
            <div class="col-md-12"><label class="labels">Phone No.:</label><input type="text" name="phnno" class="form-control" placeholder="Enter Phone Number" value=""></div>
            <div class="col-md-12"><label class="labels">Personal Mail:</label><input type="email" name="pmail" class="form-control" placeholder="Enter Personal Mail" value=""></div>
            </br>
          
                        <div class="d-flex justify-content-between align-items-center experience"><span>Educational Details</span></div><br>
            <div class="col-md-12"><label class="labels">Projects:</label><input type="text" name="proj" class="form-control" placeholder="Enter Source Code Link" value=""></div>
            <div class="col-md-12"><label class="labels">Skills:</label><textarea id="jskills" name="skills" rows="2" cols="10" class="form-control" placeholder="Enter Skills"></textarea></div>
            
            <div class="col-md-12"><label class="labels">SSC marks:</label><input type="number" name="ssc" class="form-control" placeholder="Enter Your SSC Marks" value=""></div>
            <div class="col-md-12"><label class="labels">Inter Marks:</label><input type="number" name="inter" class="form-control" placeholder="Enter Your Inter Marks" value=""></div>
            <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Save Profile</button></div>
                     
                     
                        </form>
                       </div>
        </div>
    </div>
    </div>
  <%
  con.close();
}
else
{}
}
catch(Exception e)
{
	out.println(e);
}
%>
    </body>
</html>