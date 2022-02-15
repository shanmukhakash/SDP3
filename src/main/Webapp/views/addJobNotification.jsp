<!DOCTYPE html>
<html>
<head>
<title>Add Job Notification</title><meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="addjobnotifications.css" type="text/css" />
</head>

<body>

  <div class="topnavbar">
  <img src="img/Nav Bar Logo.png" class="toplogo">
  </div>
  <div class="bottomnavbar">
    <img src="img/Bottom Logo.png" class="bottomlogo">
  </div>


<center>

	  <form method=post action="/addjobnotification" modelAttribute="jobs">
	  <fieldset style="width:100px" ;"height:50px"> 
	  <table align=center width=650px height=300px>
	  <h2 align="center"><B>Add Job Details</B></h2>
	  <hr>
	  <tr>
	  <td><b>Job ID :</b><input type="number" name="jid" placeholder="Enter Job Id" required><br><br></td>
	  </tr>
	  
	  <tr>
	  <td><b>Company Name :</b><input type="text" name="cname" placeholder="Enter Compnay Name" required><br><br></td>
	  </tr>
	  
	  <tr>
	  
	  <td><b>Job Title :</b>&nbsp; <select name="jtitle" required>
						<option value="--------">Select</option>
								<option value="Manager">Manager</option>
								<option value="Software Developer">Software Developer</option>
								<option value="Database Administrator">Database Administrator</option>
								<option value="System Architect">System Architect</option>
								<option value="Web Developer">Web Developer</option>
						</select><br>
						<br>
						<br></td>
	  
	  </tr>
	
	    <tr>
	  <td><b>Recruitment Date:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="Enter Date: YYYY-MM-DD" name="jdate"><br><br></td>
	  </tr>
	  
	    <tr>
	  <td><b>Skills Required :</b><br><br><textarea id="jskills" name="jskills" rows="5" cols="60">
	  </textarea><br><br></td>
	  </tr>
	  
	  <tr>
	  <td><b>Description :</b><br><br><textarea id="jdesc" name="jdesc" rows="5" cols="60">
	  </textarea><br><br></td>
	  </tr>
	  
	  <tr>
	  <td><b>Salary :</b><input type="number" name="jsalary" placeholder="Enter the Salary" required step="0.1" min="0" max="10000000000"><br><br></td>
	  </tr>
	  
	  <tr>
	  <td><b>SSC:</b><input type="number" name="jssc" placeholder="Enter Min.ssc" required step="0.1" min="0" max="100"><br><br></td>
	  </tr>
	  
	  <tr>
	  <td><b>Inter :</b><input type="number" name="jinter" placeholder="Enter Min.Inter" required step="0.1" min="0" max="100"><br><br></td>
	  </tr>
	  
	  <tr>
	  <td><b>B.Tech :</b><input type="number" name="jcgpa" placeholder="Enter Min.cgpa" required step="0.1" min="0" max="10"><br><br></td>
	  </tr>
	  
	  <tr>
	  <td><b>Min Backlogs :</b><input type="number" name="minbacklogs" placeholder="Enter Minimum Backlogs" required><br><br></td>
	  </tr>
	  
	  <tr>
	  <td><b>No.of Openings :</b><input type="number" name="openings" placeholder="Enter No.of Openings" required><br><br></td>
	  </tr>
	  
	  <tr>
	  <td align =center><input type="submit" value="Add"></td>
	  </tr>
	  
	  
	
	  </table>
	  </fieldset>
	  </form>
  </center>
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