

package code;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet({"/ecomm"})
public class ecomm extends HttpServlet {
private static final long serialVersionUID = 1L;
	
	public  ecomm(){
		super();
	}
	protected void ProcessRequest(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException {
	
	try{
		  HttpSession s1= request.getSession();
		String Ecommercename = request.getParameter("Ecommercename");
		String Password = request.getParameter("Password");
		if(Ecommercename.equalsIgnoreCase("ecomm") & Password.equalsIgnoreCase("ecomm"))
		{
			s1.setAttribute("Ecommercename",Ecommercename);
			response.sendRedirect("ecommhome.jsp");
		}
		else
		{
			s1.setAttribute("Ecommercename",Ecommercename);
			response.sendRedirect("ecomm.jsp?auth=failed");
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

