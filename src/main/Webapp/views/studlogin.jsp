<html>
<head>
<title>Student Login Form</title>
    <link rel="stylesheet" type="text/css" href="adminlogin.css">
<body>
    <ul>
  <img src="img/Nav Bar Logo.png" class="toplogo">
  <li><a href="/irplogin">IRP Admin</a></li>
  <li><a href="/studlogin">Student</a></li>
  <br><br><br>
  </ul>
  <div class="bottomnavbar">
    <img src="img/Bottom Logo.png" class="bottomlogo">
  </div>
  <div class="loginbox">
        <h1>Student Login</h1>
        <form method="post" action="/studchecklogin">
            <p>Student ID:</p><input type="text" name="userid" required placeholder=" Enter Student Id">
      <p>Password:</p><input type="password" name="password" required placeholder=" Enter Password">
            <input type="submit" value="Submit"><br>
        </form>
    </div>
</body>
</head>
</html>