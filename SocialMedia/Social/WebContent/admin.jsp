<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/Style.css" rel="stylesheet">
	<title>Admin</title>
</head>
<body>
<div class="bl">
<center><h2 style="color:red;padding-top:30px;font-size:30px">Connecting Social Media to E-Commerce: Cold-Start Product Recommendation </h2></center>
<center><nav style="border:none;margin-left:500px;padding-top:9px;background-color:transparent" class="navbar navbar-inverse">
<ul class="nav navbar-nav">
<li><a style="color:red;font-family:verdana"href="home.jsp">Home</a></li>
<li><a style="color:red;font-family:verdana"href="admin.jsp">Admin Login</a></li>

<li><a style="color:red;font-family:verdana"href="Logout.jsp">Logout</a></li>
</ul>
</nav></center>
  <div class="border">
  <form action="admin" method="post">
<h4 style="text-align:center;font-family:cursive"><b>ADMIN LOGIN</b></h4>
<div class="form-group">
<div style="font-size:20px;color:black;margin-left:50px" class="form-group">
<b><h4>AdminName:</h4></b>
<input  type="text" name="Adminname" placeholder="enter admin name">
</div>
<div style="font-size:20px;color:black;margin-left:50px" class="form-group">
<b><h4>Password:</h4></b>
<input  type="password" name="Password" placeholder="enter password">
</div></div>
<center><input type=submit style="width:150px;" value="Login" class="btn btn-danger"></center></form>
</div>
</div>
</body>
</html>