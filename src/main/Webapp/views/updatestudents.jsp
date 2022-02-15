<!DOCTYPE html>
<html>
<head>
<base href="//localhost:2075/updatestudent" />
<title>Update Students</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
<link rel="stylesheet" href="addstudents.css" type="text/css" />
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
		<form method=post action="/updatestudentdetails/${sid}">
			<fieldset style="width: 100px";"height:50px">
				<table align=center width=500px height=250px>
				<h2 align="center">Update Student Details</h2>
				<hr>
					<tr>
						<td><b>Student ID: </b>${sid }<br></td>
					</tr>

					

					<tr>
						<td><b>Year Of Study:</b>&nbsp; <select name="year" required>
						<option value="--------">Select</option>
								<option value="1">I</option>
								<option value="2">II</option>
								<option value="3">III</option>
								<option value="4">IV</option>
						</select><br>
						</td>
					</tr>

					

					<tr>
						<td><b>CGPA: </b><input type="number" name="cgpa" step="0.01" min="0" max="10" placeholder="CGPA" required><br></td>
					</tr>

					<tr>
						<td><b>Backlogs Count: </b><input type="number"
							name="backlogs" placeholder="Enter no.of backlogs" required></td>
					</tr>

					<tr>
						<td align=center><input type="submit" value="Update Student"></td>
					</tr>

				</table>
			</fieldset>
		</form>
	</center>

	<div class="nav" id="navbar">
		<nav class="nav__container">
			<div>
				<a href="#" class="nav__link nav__logo"> <i
					class='bx bxs-disc nav__icon'></i> <span class="nav__logo-name">SAS</span>
				</a>

				<div class="nav__list">
					<div class="nav__items">
						<a href="/irphome" class="nav__link active"> <i
							class='bx bx-home nav__icon'></i> <span class="nav__name">Home</span>
						</a>

						<div class="nav__dropdown">
							<a href="#" class="nav__link"> <i
								class='bx bx-user nav__icon'></i> <span class="nav__name">Actions</span>
								<i class='bx bx-chevron-down nav__icon nav__dropdown-icon'></i>
							</a>

							<div class="nav__dropdown-collapse">
								<div class="nav__dropdown-content">
									<a href="/addStudent" class="nav__dropdown-item">Add
										Student</a><br>
									<a href="/addJob"
										class="nav__dropdown-item">Add Job Notification</a><br>
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

			<a href="/irplogout" class="nav__link nav__logout"> <i
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