
package database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class connection {
	 public static Connection useConnection(){
	        
         Connection con = null;
         try {
         String driver = "com.mysql.jdbc.Driver";
         String driverConnection = "jdbc:mysql://localhost:3306/ecomm";
         Class.forName(driver);
         con = DriverManager.getConnection(driverConnection,"root","root");
             System.out.println("Connection Established.....!");       
     } catch (SQLException ex) {
         Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
     } catch (ClassNotFoundException ex) {
         Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
     }
           return con;
 }
}
