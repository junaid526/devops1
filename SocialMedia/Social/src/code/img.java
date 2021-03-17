package code;





import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.DataInputStream;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.swing.text.html.HTMLDocument.Iterator;
import javax.xml.ws.RequestWrapper;

import org.apache.tomcat.util.http.fileupload.FileItemFactory;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import database.connection;
import oracle.jrockit.jfr.events.RequestableEventEnvironment;


@WebServlet("/img")
@MultipartConfig


public class img extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			response.setContentType("text/html;charset=UTF-8");
    	PrintWriter out = response.getWriter();
    	String saveFile="";
    	String contentType = request.getContentType();
    	if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
    	DataInputStream in = new DataInputStream(request.getInputStream());
    	int formDataLength = request.getContentLength();
    	byte dataBytes[] = new byte[formDataLength];
    	int byteRead = 0;
    	int totalBytesRead = 0;
    	while(totalBytesRead < formDataLength){
    	byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
    	totalBytesRead += byteRead;
    	}
    	String file = new String(dataBytes);
    	saveFile = file.substring(file.indexOf("filename=\"") + 10);
    	saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
    	saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
    	 HttpSession session=request.getSession();
		 session.setAttribute("filename",saveFile);
		 System.out.println(saveFile);
    	int lastIndex = contentType.lastIndexOf("=");
    	String boundary = contentType.substring(lastIndex + 1,contentType.length());
    	int pos;
    	pos = file.indexOf("filename=\"");
    	pos = file.indexOf("\n", pos) + 1;
    	pos = file.indexOf("\n", pos) + 1;
    	pos = file.indexOf("\n", pos) + 1;
    	int boundaryLocation = file.indexOf(boundary, pos) - 4;
    	int startPos = ((file.substring(0, pos)).getBytes()).length;
    	int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
    	File ff = new File("C:/Users/Admin/Desktop/connecting socialmedia/socialmediaecommerce/WebContent/image"+saveFile);
    	
    	FileOutputStream fileOut = new FileOutputStream(ff);
    	fileOut.write(dataBytes, startPos, (endPos - startPos));
    	fileOut.flush();
    	fileOut.close();
    	FileItemFactory factory = new DiskFileItemFactory();
    	ServletFileUpload upload = new ServletFileUpload(factory);
    	try{
    	
    	
    		PreparedStatement psmnt = null;
    		


     
        //System.out.println(type);
        
        
        
        Connection con = connection.useConnection();
      
                				 psmnt = con.prepareStatement("insert into addprod(path,filename) values(?,?)");
                				
                				 psmnt.setString(1, ff.getPath());
                				 psmnt.setString(2, saveFile);
                				
                			
                				 int s1 = psmnt.executeUpdate();
                				 if((s1>0)) {
                					 response.sendRedirect("addpro.jsp?auth=0");
                					
                				 }
                				 else{
                					  response.sendRedirect("addpro.jsp?auth2=0");
                				 }
                				 
    	}
    	
                				 catch(Exception e){
                				     e.printStackTrace();
                				 
                				 
                				 }
    	}
            }
    	
    
 // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
    * Handles the HTTP
    * <code>GET</code> method.
    *
    * @param request servlet request
    * @param response servlet response
    * @throws ServletException if a servlet-specific error occurs
    * @throws IOException if an I/O error occurs
    */
    
    /**
    * Handles the HTTP
    * <code>POST</code> method.
    *
    * @param request servlet request
    * @param response servlet response
    * @throws ServletException if a servlet-specific error occurs
    * @throws IOException if an I/O error occurs
    */
    

    /**
    * Returns a short description of the servlet.
    *
    * @return a String containing servlet description
    */
    @Override
    public String getServletInfo() {
    return "Short description";
    }// </editor-fold>
    }


