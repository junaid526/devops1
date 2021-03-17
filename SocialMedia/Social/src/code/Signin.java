package code;

import database.connection;
import java.sql.Statement;
import java.sql.SQLException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet({"/Signin"})
public class Signin extends HttpServlet {
	 private static final long serialVersionUID = -1L;
		
		public Signin(){
			super();
		}
protected void ProcessRequest(HttpServletRequest request,HttpServletResponse response)
	            throws ServletException, IOException {
			  response.setContentType("text/html;charset=UTF-8");
		        PrintWriter out = response.getWriter();
		        
		        try
		        {
		        	  HttpSession s = request.getSession();
		        	String Username = request.getParameter("Username");
		        	String Password = request.getParameter("Password");
		        	
		        	
		        	Connection con = connection.useConnection();
		        	Statement st = con.createStatement();
		        	String sql = "Select * from uregis where name = '" + Username + "'and Password = '" + Password + "'";
		        	ResultSet rs = st.executeQuery(sql);
		        	if(rs.next())
		        	{
		        		String Status = rs.getString("Status");
		        		if(Status.equals("No"))
		        		{
		        			response.sendRedirect("SignIn.jsp?Error=Please Activate");
		        		}
		        		else
		        		{
		        			s.setAttribute("Username",Username);
		        			response.sendRedirect("User_Home.jsp?Done");
		        		}
		        	}
		        }
		        catch(Exception ex)
		        {
		        	System.out.println("Error:" + ex);
					ex.printStackTrace();
		        }
		        finally{
		        	out.close();
		        }
		        }
		        
@Override
protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		     ProcessRequest(request,response);
		        	}
@Override
protected void doPost(HttpServletRequest request,HttpServletResponse response)
throws ServletException, IOException {
		   ProcessRequest(request,response);
}
}
