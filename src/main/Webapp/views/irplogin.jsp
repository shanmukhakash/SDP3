<html>
<head>
<title>IRP Admin Login Form</title>
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
        <h1>IRP Admin Login</h1>
        <form method="post" action="/irpchecklogin">
            <p>IRP Admin ID:</p><input type="text" name="userid" required placeholder=" Enter IRP Admin id">
      <p>Password:</p><input type="password" name="password" required placeholder=" Enter Password">
            <input type="submit" value="Submit"><br>
        </form>
    </div>
</body>
</head>
</html>
