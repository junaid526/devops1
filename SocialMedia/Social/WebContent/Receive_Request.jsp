<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.Statement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Connection" %>
<%@page import="database.connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Receive Request</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/Style.css" rel="stylesheet">
</head>
<body  class="io">
<div>
<div class="rgb">
<center><h2 style="color:red;padding-top:0;font-size:30px">Connecting Social Media to E-Commerce: Cold-Start Product Recommendation</h2></center>
<nav style="border:none;margin-left:120px;padding-top:10px;background-color:transparent" class="navbar navbar-inverse">
 <ul class="nav navbar-nav">
        <li class style="font-family: 'Indie+Flower';font-size:20px"><a href="User_Home.jsp">Home</a></li>
               <li class style="font-family: 'Indie+Flower';font-size:20px"><a href="viewprod.jsp">View Products</a></li>
       
          <li class style="font-family: 'Indie+Flower';font-size:20px"><a href="recvrecom.jsp">View Recommend</a></li>
        <li><a href="Receive_Request.jsp" style="font-family: 'Indie+Flower';font-size:20px">View friend request</a></li>
        <li style="font-family: 'Indie+Flower';font-size:20px"><a href="sendreq.jsp">Send friend request</a></li>
      <li ahref="Logout.jsp" style="font-family: 'Indie+Flower';font-size:20px"><a href="Logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
      </nav> 
<div class="border">
<center><h2 style="color:green">FRIENDS LIST(If Admin Allows)</h2></center>
      
     		<hr/>
     		<table style="font-family:'Play', sans-serif" class="table table-bordered table-striped">
     			<tr>
<th style="color:red">NAME</th>
<th style="color:red">DOB</th>
<th style="color:red">GENDER</th>
<th style="color:red">STATUS</th>
</tr>
 <%
	HttpSession s = request.getSession();
    String Username = (String)s.getAttribute("Username");
     Connection con = connection.useConnection();
     Statement st = con.createStatement();
     ResultSet rs = st.executeQuery("Select * from send_request where name='"+ Username +"'");
     while(rs.next())
     {
     %>
<tr style="color:black">
<td><%= rs.getString("from_name") %></td>
<td><%= rs.getString("dob") %></td>
<td><%= rs.getString("gender") %></td>
<td><%= rs.getString("status")%></td>
<%} %>
</tr>
</table>
</div>
</div>
</div>
</body>
</html>