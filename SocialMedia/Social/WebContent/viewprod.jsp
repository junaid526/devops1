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
<body class="bb">
<center><h2 style="color:red;padding-top:0;font-size:30px">Connecting Social Media to E-Commerce: Cold-Start Product Recommendation </h2></center>
<nav style="border:none;margin-left:100px;padding-top:10px;background-color:transparent" class="navbar navbar-inverse">
 <ul class="nav navbar-nav">
        <li class style="font-family: 'Indie+Flower';font-size:20px"><a href="User_Home.jsp">Home</a></li>
       <li class style="font-family: 'Indie+Flower';font-size:20px"><a href="viewprod.jsp">View Products</a></li>
          <li class style="font-family: 'Indie+Flower';font-size:20px"><a href="recvrecom.jsp">View Recommend</a></li>
          <li><a href="Receive_Request.jsp" style="font-family: 'Indie+Flower';font-size:20px">View friend request</a></li>
        <li style="font-family: 'Indie+Flower';font-size:20px"><a href="sendreq.jsp">Send friend request</a></li>
              <li style="font-family: 'Indie+Flower';font-size:20px"><a href="Logout.jsp">Logout</a></li>	
      </ul>
      </nav>
<h4 style="text-align:center;color:white;padding-top:50px;font-family:cursive"><b>	View Available Products</b></h4>
	<table style="margin-left:80px;width:80%;color:white" class="table table-bordered">
	<tr>
									
									<th>PRODUCT NAME</th>
								     <th>BRAND NAME</th>
     <th>PRODUCT PRICE</th>
      <th>PRODUCT WARRANTY</th>
  <th>Image</th>
          <th>RECOMMAND PRODUCT TO FRIENDS</th>
           
          
        
     
   
     </tr>
      <%
     Connection con = connection.useConnection();
     Statement st = con.createStatement();
     ResultSet rs = st.executeQuery("Select * from 	addprod");
     while(rs.next())
     {
     %>
     <tr>     
            
     <td><%= rs.getString("prodname") %></td>      
     <td><%= rs.getString("brandname") %></td>
     <td><%= rs.getString("Price") %></td>
     <td><%= rs.getString("warranty") %></td>      
      <td><img style=" height:150px;width:150px "src="image/<%= rs.getString("filename") %>"  /></td> 
         <td><a href="sendrecom.jsp?ID=<%=rs.getString("id")%>">RECOMMAND</a></td>
       
      
 
      </tr> 
        
      <%
     }
     %>
																			
												</table>
	
</body>
</html>

