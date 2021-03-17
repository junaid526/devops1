package code;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/admin"})
public class admin extends HttpServlet {
private static final long serialVersionUID = 1L;
	
	public  admin(){
		super();
	}
	protected void ProcessRequest(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException {
	
	try{
		String Adminname = request.getParameter("Adminname");
		String Password = request.getParameter("Password");
		if(Adminname.equalsIgnoreCase("admin") & Password.equalsIgnoreCase("admin"))
		{
			response.sendRedirect("Admin_Home.jsp");
		}
		else
		{
			response.sendRedirect("admin.jsp?auth=failed");
		}
	}
	catch(IOException ex)
	{
		System.out.println("Error:" + ex);
	}
}
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

