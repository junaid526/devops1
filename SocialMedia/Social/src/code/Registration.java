package code;

import database.connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/uregis"})
public class Registration extends HttpServlet {
	 private static final long serialVersionUID = -1L;
		
		public Registration(){
			super();
		}
protected void ProcessRequest(HttpServletRequest request,HttpServletResponse response)
	            throws ServletException, IOException {
			  response.setContentType("text/html;charset=UTF-8");
			  PrintWriter out = response.getWriter();			  
				try{ 		    	
		    	String Status="Waiting";        
		       String name =request.getParameter("name");
                String Password = request.getParameter("Password");
	        	String CPassword = request.getParameter("CPassword");
	        	String gender = request.getParameter("gender");
	        	String dob = request.getParameter("dob");
	        	
	        	String address = request.getParameter("address");	        
	        	String Email = request.getParameter("Email");
	        	String Mobile = request.getParameter("Mobile");
	        	
	        	if(Password.equals(CPassword))	        	
	        	{ Connection con = connection.useConnection();
		                				 PreparedStatement psmnt = con.prepareStatement("insert into uregis(Status,name,Password,CPassword,gender,dob,address,Email,Mobile) values(?,?,?,?,?,?,?,?,?)");
		                				 psmnt.setString(1, Status);
		                				 psmnt.setString(2, name);
		                				 psmnt.setString(3, Password);
		                				 psmnt.setString(4, CPassword);
		                				 psmnt.setString(5, gender);
		                			     psmnt.setString(6, dob);		                				
		                				 psmnt.setString(7, address);		                				
		                				 psmnt.setString(8, Email);
		                				 psmnt.setString(9, Mobile);
		                				
		        				        		psmnt.executeUpdate();
		        		System.out.println(psmnt);		
		        		response.sendRedirect("SignIn.jsp?Registered Successfully!!Login Here");
		        	}
		        			    	
		        	else{
		        		response.sendRedirect("User_Regis.jsp?Error=No");
		        	}
		    	
				 }
		        catch(Exception ex)
		        {
		        	System.out.println("Error:" + ex);
					ex.printStackTrace();
		        }
		        finally{
		        	out.close();
		        }}		  

@Override
protected void doGet(HttpServletRequest request,HttpServletResponse response)
       throws ServletException, IOException {
	   ProcessRequest(request,response);
}
@Override
protected void doPost(HttpServletRequest request,HttpServletResponse response)
       throws ServletException, IOException {
	   ProcessRequest(request,response);
}
}
