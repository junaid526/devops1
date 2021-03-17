<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
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
<body class="bb">
<form action="uregis" method="post">
<div class="container">
<div style="margin-top:40px" class="border">
<div class="rgba">
<h3 style="text-align:center;color:black">User Registration</h3>
 <%
     String Error = request.getParameter("Error");
   if(Error!=null)
   {
	   out.println("<h4 style='font-family:Raleway,sans-serif;color:Red'>Password did not match</h4>");
   }
   %>  
    <br/>
<hr style="width:50%"/>
<div class="form-group">
   <div class="pad">
  
    <h4>User name</h4>
    <input type="text" class="form-control" name="name" placeholder="Enter the name" required="">
    </div>
</div>
<div class="form-group">
   <div class="pad">
    <h4>Password</h4>
    <input type="password" class="form-control" name="Password" placeholder="Enter the Password" required="">
    </div>
</div>
<div class="form-group">
   <div class="pad">
    <h4>Confirm Password</h4>
    <input type="password" class="form-control" name="CPassword" placeholder="Repeat Password" required="">
    </div>
</div>
<div class="form-group">
   <div class="pad">
 <h4><b>GENDER</b></h4>
					 <select id="GENDER" name="gender" style="color:black;font-family: 'poiret+one;"class="form-control"  placeholder="Select the Usertype" required="">
					 <option value="GENDER">GENDER</option>
					  <option value="MALE">MALE</option>
					 <option value="FEMALE">FEMALE</option>
					 </select>
					 </div>
					 </div>
					 
<div class="form-group">
   <div class="pad">
    <h4>DOB</h4>
    <input type="date" class="form-control" name="dob" placeholder="enter your dob" required="">
    </div>
</div>
				   
				
<div class="form-group">
   <div class="pad">
    <h4>Address</h4>
    <input type="text" class="form-control" name="address" placeholder="type address here" required="">
    </div>
</div>

			
				<div class="form-group">
   <div class="pad">
    <h4>Email Address</h4>
    <input type="text" class="form-control" name="Email" placeholder="me@example.com" required="">
    </div>
</div>
<div class="form-group">
   <div class="pad">
    <h4>Mobile Number</h4>
    <input type="text" class="form-control" name="Mobile" placeholder="10 Digits Number" required="">
    </div>
</div>
 <div class="form-group">
   <div class="pad">
    <input type="submit" class="btn btn-danger" style="width:130px" value="Sign In"><h5><a style="color:black" href="SignIn.jsp">Already having an account?</a></h5>
    </div>  
    </div>
</div>
</div>
</div>

</form>

</body>
</html>