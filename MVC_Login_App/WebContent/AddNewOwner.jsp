<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Add New Owner</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form method="post" action="AddOwnerServlet" id="loginform">
<div style="padding: 100px 0 0 250px;">
<div id="login-box">
<h2>Add New Owner</h2>
Please fill in the form below to add a new Owner to the Database
<br>
<br>
<div id="login-box-name" style="margin-top:20px;">First Name:</div>
<div id="login-box-field" style="margin-top:20px;">
<input name="firstName" class="form-login" title="firstName" value="" size="30" maxlength="48" />
</div>
<div id="login-box-name">Last Name:</div>
<div id="login-box-field">
<input name="lastName" class="form-login" title="lastName" value="" size="30" maxlength="48" />
</div>
<div id="login-box-name">Gender</div>
<div id="login-box-field">
<input name="gender" class="form-login" title="gender" value="" size="30" maxlength="48" />
</div>
<br />
<span class="login-box-options">
<a href="program.jsp" style="margin-left:30px;">Return to Main Menu</a>
</span>
<br />
<br />
<input style="margin-left:100px;" type="submit" value="Submit" />
</div>
</div>
</form>
</body>
</html>
