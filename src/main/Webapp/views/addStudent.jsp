<!DOCTYPE html>
<html>
<head>
<title>Add Students</title>
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

		<form method=post action="/addstudentdata">
			<fieldset style="width: 100px";"height:50px">
				<table align=center width=650px height=300px>
				<h2 align="center"><B>Add Students</B></h2>
					<tr>
						<td><b>Student ID: </b><input type="text" name="sid"
							placeholder="Enter Student ID" required><br></td>
					</tr>

					<tr>
						<td><b>Student First Name: </b><input type="text"
							name="fname" placeholder="Enter Student First Name" required><br>
						<br></td>
					</tr>

					<tr>
						<td><b>Student Last Name: </b><input type="text" name="lname"
							placeholder="Enter Student Last Name" required><br>
						<br></td>
					</tr>

					<tr>
						<td><b>Student Father Name: </b><input type="text"
							name="fathername" placeholder="Enter Student Father Name"
							required><br>
						<br></td>
					</tr>

					<tr>
						<td><b>Student Mother Name: </b><input type="text"
							name="mothername" placeholder="Enter Student Mother Name"
							required><br>
						<br></td>
					</tr>

					<tr>
						<td><b>Gender: </b><input type="radio" name="gender"
							value="male">Male &nbsp;&nbsp;&nbsp; <input type="radio"
							name="gender" value="female">Female<br>
						<br>
						<br></td>
					</tr>

					<tr>
						<td><b>Year Of Study:</b>&nbsp; <select name="year" required>
						<option value="--------">Select</option>
								<option value="1">I</option>
								<option value="2">II</option>
								<option value="3">III</option>
								<option value="4">IV</option>
						</select><br>
						<br>
						<br></td>
					</tr>

					<tr>
						<td><b>Department:</b>&nbsp; <select name="dept" required>
								<option value="--------">Select</option>
								<option value="CSE">CSE</option>
								<option value="ECE">ECE</option>
								<option value="MECH">MECH</option>
								<option value="ECM">ECM</option>
								<option value="CIVIL">CIVIL</option>
								<option value="BT">BT</option>
						</select><br>
						<br>
						<br></td>
					</tr>

					<tr>
						<td><b>Personal Email: </b><input type="email" name="pmail"
							placeholder="Enter E-Mail" required><br>
						<br></td>
					</tr>


					<tr>
						<td><b>Mobile.No: </b><input type="text" name="phno"
							placeholder="Enter Mobile.No" required><br>
						<br></td>
					</tr>

					<tr>
						<td><b>Specialization:</b>&nbsp; <select name="spec" required>
								<option value="--------">Select</option>
								<option value="Data Science">DS</option>
								<option value="Artificial Intelligence">AI</option>
								<option value="Cyber Security">CYS</option>
								<option value="Gaming">GUX</option>
								<option value="Software Engineering">SE</option>
								<option value="Internet of Things">IOT</option>
						</select><br>
						<br></td>
					</tr>

					<tr>
						<td><b>CGPA: </b><input type="number" name="cgpa" step="0.01" min="0" max="10" placeholder="CGPA" required><br>
						<br></td>
					</tr>

					<tr>
						<td><b>Backlogs Count: </b><input type="number"
							name="backlogs" placeholder="Enter backlogs" required><br><br></td>
					</tr>

					<tr>
						<td align=center><input type="submit" value="Add"></td>
					</tr>

				</table>
			</fieldset>
		</form>
		<br><br>
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