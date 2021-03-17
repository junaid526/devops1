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
<title>malicious apps</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/Style.css" rel="stylesheet">
</head>
<body class="bb">
<center><h2 style="color:red;padding-top:0;font-size:30px">Connecting Social Media to E-Commerce: Cold-Start Product Recommendation </h2></center>
<nav style="border:none;margin-left:100px;padding-top:10px;background-color:transparent" class="navbar navbar-inverse">
 <ul class="nav navbar-nav">
        <li><a style="font-family:Raleway,sans-serif;color:white" href="home.jsp">Home</a></li>
     
        <li><a style="font-family:Raleway,sans-serif;color:white" href="viewuser.jsp">View User Details</a></li>
                      <li><a style="font-family:Raleway,sans-serif;color:white" href="Logout.jsp">Logout</a></li>  	
      </ul>
      </nav>
<h4 style="text-align:center;color:white;padding-top:50px;font-family:cursive"><b>View Customer Details</b></h4>
	<table style="margin-left:80px;width:80%;color:white" class="table table-bordered">
									<th> CUSTOMER NAME</th>
								     <th>CONTACT NO</th>
     <th>EMAIL</th>
      <th>ADDRESS</th>
        <th>GENDER	</th>
   
     </tr>
      <%
     Connection con = connection.useConnection();
     Statement st = con.createStatement();
     ResultSet rs = st.executeQuery("Select * from 	uregis");
     while(rs.next())
     {
     %>
     <tr>         
     <td><%= rs.getString("name") %></td>      
     <td><%= rs.getString("Mobile") %></td>
     <td><%= rs.getString("Email") %></td>
     <td><%= rs.getString("address") %></td>
       <td><%= rs.getString("gender") %></td>
     
     
        
      <%
     }
     %>
																			
												</table>
	
</body>
</html>

