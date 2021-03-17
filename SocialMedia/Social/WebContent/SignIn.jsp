<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign In</title>
<div class="container">
<ul class="nav navbar-nav">
<li><a style="font-family:Raleway,sans-serif;color:white" href="home.jsp">Home<span class="sr-only">(current)</span></a></li>
         <li><a style="font-family:Raleway,sans-serif;color:white;" href="User_Regis.jsp">User Registration</a></li>
        <li><a style="font-family:Raleway,sans-serif;color:white" href="SignIn.jsp">User Login</a></li>
                <li><a style="font-family:Raleway,sans-serif;color:white" href="home.jsp">Logout</a></li>        
                </ul> 
        </div>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="css/Style.css"/>
<link href='https://fonts.googleapis.com/css?family=Raleway:300' rel='stylesheet' type='text/css'>
</head>
<body class="code">
<form action="Signin" method="post">
<div class="container">
<div class="border">
<div class="rgba">
<h3 style="text-align:center;color:black">User Sign In</h3>
<hr style="width:30%"/>
<div class="form-group">
   <div class="pad">
    <h4>Username</h4>
    <input type="text" class="form-control" name="Username" placeholder="Enter the Username" required="">
    </div>
</div>
<div class="form-group">
   <div class="pad">
    <h4>Password</h4>
    <input type="password" class="form-control" name="Password" placeholder="Enter the Password" required="">
    </div>
    <br/>
    <div class="form-group">
   <div class="pad">
    <input type="submit" class="btn btn-danger" style="width:130px" value="Sign In"><h5><a style="color:black" href="User_Regis.jsp">Click here to register!</a></h5>
    <br/>
   <br/>
    <%
     String Error = request.getParameter("Error");
     if(Error!=null)
     {
    	 out.println("<h4 style='font-family:Raleway,sans-serif;color:Red'>Your Profile is not activated. Please Contact your Admin</h4>");
     }
    %>
    </div>
    <br/>
</div>
</div>
<div class="row">
<div class=col-md-4><div class="form-group">
   <div class="pad">

   <a STYLE="COLOR:BLUE"href="https://www.facebook.com/">Click here to login with Facebook</a>
    </div>
    </div></div>
    <div class=col-md-4><div class="form-group">
   <div class="pad">

   <a  STYLE="COLOR:BLUE"href="https://mail.google.com/">Click here to login with Gamil</a>
    </div>
    </div></div>
    
</div>
</div>
</div>
</form>
</body>
</html>