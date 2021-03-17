<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="database.connection" %>
    <%@page import="java.sql.ResultSet" %>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.Connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ecommerce</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/Style.css" rel="stylesheet">
</head>
<body class="b">
<center><h2 style="color:red;padding-top:0;font-size:30px">Connecting Social Media to E-Commerce: Cold-Start Product Recommendation </h2></center>
<nav style="border:none;margin-left:100px;padding-top:10px;background-color:transparent" class="navbar navbar-inverse">
 <ul class="nav navbar-nav">
<li><a style="font-family:Raleway,sans-serif;color:white" href="ecommhome.jsp">Home<span class="sr-only">(current)</span></a></li>
     
        
        <li><a style="font-family:Raleway,sans-serif;color:white;" href="addpro.jsp">Add Product</a></li>
                <li><a style="font-family:Raleway,sans-serif;color:white" href="Logout.jsp">Logout</a></li>        
                </ul> 

      </nav>
 <form action="img" method="post" enctype="multipart/form-data">

<h3 style="text-align:center;color:black">Add Products</h3>
<hr style="width:30%"/>
<%
String msg=request.getParameter("auth");
String ms=request.getParameter("auth2");
if(msg!=null)
	 out.println("<center><b><h3 style='font-family:Poiret+One;color:red;font-size:19px'>Image Uploaded Successfully...!!Jus fill ur tags in below</h3></b></center>");
if(ms!=null)
out.println("<center><b><h3 style='font-family:Poiret+One;color:red;font-size:19px'>Ur tags registered Successfully...</h3></b></center>");
%>
 <div class="form-group">
   <div class="pad">
					 <h4>Product image</h4>
					 	<input type="file" name="image" class="form-control" required="">
				</div>
				</div>
				<div class="form-group">
   <div class="pad">
				<center><input type="submit" class="btn btn-primary"  style="width:150px;height:35px"  value="UPLOAD"></center>

</div>
</div>
</form> 
<form action="addprod" method="post">
<div class="form-group">
   <div class="pad">
    <h4>Product name</h4>
    <input type="text" class="form-control" name="prodname" placeholder="Enter the prodname" required="">
    </div>
</div>
<div class="form-group">
   <div class="pad">
    <h4>brand name</h4>
    <input type="text" class="form-control" name="brandname" placeholder="Enter the brandname" required="">
    </div>
</div>
<div class="form-group">
   <div class="pad">
    <h4>Product Price</h4>
    <input type="text" class="form-control" name="Price" placeholder="Enter the Price" required="">
    </div>
    <br/>
    </div>
    <div class="form-group">
   <div class="pad">
    <h4>Product Warranty</h4>
    <input type="text" class="form-control" name="warranty" placeholder="Enter the warranty" required="">
    </div>
    <br/>
    </div>
  
   
    <div class="form-group">
   <div class="pad">
    <input type="submit" class="btn btn-danger" style="width:130px" value="Add Product">
    <br/>
   <br/>
    <%
        String Error = request.getParameter("Error");
        if(Error!=null)
        {
        	out.println("<h4 style='font-family:Raleway,sans-serif;color:Red'>Uploaded Successfully</h4>");
        }
      %>
    </div>
    <br/>
</div>
</form>

</body>
</html>

