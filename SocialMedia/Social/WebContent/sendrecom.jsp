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
<title>Send Request</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/Style.css" rel="stylesheet">
</head>
<body>
<div class="code">
<div class="rgb"> 
<center><h2 style="color:red;padding-top:0;font-size:30px">Connecting Social Media to E-Commerce: Cold-Start Product Recommendation</h2></center>
<nav style="border:none;margin-left:120px;padding-top:10px;background-color:transparent" class="navbar navbar-inverse">
 <ul class="nav navbar-nav">
        <li class style="font-family: 'Indie+Flower';font-size:20px"><a href="User_Home.jsp">Home</a></li>
               <li class style="font-family: 'Indie+Flower';font-size:20px"><a href="viewprod.jsp">View Products</a></li>
         
          <li class style="font-family: 'Indie+Flower';font-size:20px"><a href="recvrecom.jsp">View Recommend</a></li>
        <li><a href="Receive_Request.jsp" style="font-family: 'Indie+Flower';font-size:20px">View friend request</a></li>
        <li style="font-family: 'Indie+Flower';font-size:20px"><a href="Send_Request.jsp">Send friend request</a></li>
      <li ahref="Logout.jsp" style="font-family: 'Indie+Flower';font-size:20px"><a href="Logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
      </nav>
    <div class="border">
    <center><h2 style="color:green">Recommend Products</h2></center>
      
     		
     		<table style="font-family:'Play', sans-serif" class="table table-bordered">
     			<tr style="color:white;">
     				<th  style="color:red">PRODUCT NAME</th>
     				<th style="color:red">BRANDNAME</th>
     				<th style="color:red">PRICE</th>
     				<th style="color:red">WARRENTY</th>
     					<th style="color:red">SEND recommandation</th>
     			</tr>
     					<%
									HttpSession s = request.getSession();
						    	    String Username = (String)s.getAttribute("Username");
						    	    String ID =request.getParameter("ID");
									Connection con = connection.useConnection();
									Statement st = con.createStatement();
									ResultSet rs = st.executeQuery("Select * from addprod where ID='" +ID + "'");
									while(rs.next())
									{
									%>
     			<tr style="color:black">
     			<td><%= rs.getString("prodname")%></td>
     			<td><%= rs.getString("brandname") %></td>
     			<td><%= rs.getString("Price")%></td>
     			<td><%= rs.getString("warranty") %></td>
     			<td><a href="sendrecom.jsp?prodname=<%= rs.getString("prodname")%>&brandname=<%= rs.getString("brandname")%>&Price=<%= rs.getString("Price")%>&warranty=<%= rs.getString("warranty")%>" style=color:red>SEND</a></td>
     			
     			</tr>
     			<% }%>
     			<% 
     			String prodname = request.getParameter("prodname");
     			String brandname= request.getParameter("brandname");
     			String Price=request.getParameter("Price");
     			String warranty=request.getParameter("warranty");
     			String status="No"; 
     			Statement st2 = con.createStatement();
				ResultSet rs1 = st2.executeQuery("Select name from uregis where name = '" + Username + "'");
				if(rs1.next()){
				
				
					if(prodname != null && brandname != null && Price != null && warranty != null)
     			{
     			Statement st1 = con.createStatement();
               String sql = "insert into sendrecom(productname,brandname,Price,warranty,from_name,status) values('"+prodname+"','"+brandname+"','"+Price+"','"+warranty+"','"+Username+"','"+status+"')";
               if(st1.executeUpdate(sql)!=0){
            	   out.println("<h2 style='color:green;'>Product recommended Successfully</h2>");
               }
               
     			}
				}
     			%>
     		
     		</table>
     		</div>
     		</div>
     		</div>
</body>
</html>