<!DOCTYPE html>
<html>
<head>
<title>Change Password</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
<link rel="stylesheet" href="queries.css" type="text/css" />
</head>

<body>

	<div class="topnavbar">
		<img src="img/Nav Bar Logo.png" class="toplogo">
	</div>
	<div class="bottomnavbar">
		<img src="img/Bottom Logo.png" class="bottomlogo">
	</div>
<br><br><br><br>
<center>
        
        
        <form method=post action="/changepwd/${studid}">
			<fieldset style="width: 100px";"height:50px">
				<table align=center width=500pxheight=200px>
				<h2 align="center"><B>Change Password</B></h2>
				
				<tr>
						<td><b>Student ID: </b>${studid}</td>
					</tr> 
					
					<tr>
						<td><b>Old Password: </b><input type="password" name="oldpwd"
							placeholder="Enter Old Password" required><br></td>
					</tr> 

				<tr>
						<td><b>New Password: </b><input type="password" name="newpwd"
							placeholder="Enter New Password" required><br></td>
					</tr>

					<tr>
						<td align=center><input type="submit" value="Change Password"></td>
					</tr>

				</table>
			</fieldset>
		</form>
        </center>
    </div>


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