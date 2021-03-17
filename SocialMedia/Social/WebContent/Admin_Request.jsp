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
<title>request</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/Style.css" rel="stylesheet">
</head>
<body class="b">
<div >
<div class="rgb"> 
<center><h2 style="color:red;padding-top:0;font-size:30px">
Connecting Social Media to E-Commerce: Cold-Start Product Recommendation

</h2></center>
<nav style="border:none;margin-left:420px;padding-top:10px;background-color:transparent" class="navbar navbar-inverse">
 <ul class="nav navbar-nav">
        <li class style="font-family: 'Indie+Flower';font-size:20px"><a href="Admin_Home.jsp">Home</a></li>
         <li><a style="color:red;font-family:verdana"href="Admin_Request.jsp">Activate Request</a></li>
       <li><a style="color:red;font-family:verdana"href="viewuser.jsp">View User Details</a></li>
      <li a href="Logout.jsp" style="font-family: 'Indie+Flower';font-size:20px"><a href="Logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
      </nav>
    <div class="border">
       <h3 style="font-family:poiret-one,cursive;color:red">REQUEST ACTIVATION</h3>

     <table style="font-family:poiret-one,cursive;color:black" class="table table-bordered table-striped">
     <tr>
      <th>FROM USER</th>
      <th>TO USER</th>
     <th>GENDER</th>
     <th>Status</th>
     <th>ACCEPT</th>
     </tr>
      <%
     Connection con = connection.useConnection();
     Statement st = con.createStatement();
     ResultSet rs = st.executeQuery("Select * from send_request");
     while(rs.next())
     {
     %>
     <tr>
      <td><%= rs.getString("from_name") %></td>
     <td><%= rs.getString("name") %></td>
     <td><%= rs.getString("gender") %></td>
     <td><%= rs.getString("status") %></td>
     <td><a href="Admin_Request.jsp?ID=<%=rs.getString("id")%>">Activate</a></td>
    
     </tr>
      <%
     }
     %>
     </table>
     <%
      String ID = request.getParameter("ID");
     String query = "Update send_request Set status = 'Activated' where ID = '" + ID + "'";
     Statement st1 = con.createStatement();
     st1.executeUpdate(query);
     %>
     </div>
     </div>
     </div>
</body>
</html>