<!DOCTYPE html>
<html>
<head>
<base href="//localhost:2075/updatejobs" />
<title>Update Jobs</title><meta charset="UTF-8">
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
<br><br><br><br><br><br>
	  <form method="POST" action="/updatejobdetails/${jid}">
	  <fieldset style="width:100px" ;"height:50px"> 
	  <table align=center width=500px height=250px>
	  <h2 align="center"><B>Update Job Details</B></h2>
	  <hr>
	  <tr>
	  <td><b>Job ID :</b>${jid} <br></td>
	  </tr>
	
	    <tr>
	  <td><b>Recruitment Date:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="Enter Date: YYYY-MM-DD" name="jdate"><br></td>
	  </tr>
	  
	  <tr>
	  <td><b>Salary :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="jsalary" placeholder="Enter the Salary" required step="0.1" min="0" max="10000000000"><br></td>
	  </tr>
	  
	  <tr>
	  <td align =center><input type="submit" value="Update Job"></td>
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