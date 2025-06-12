package echannellingPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnection {
	 private static String url = "jdbc:mysql://localhost:3306/echannelling";
	 private static String user = "root";
	 private static String pass = "IT23688568";
	 private static Connection con;
	 
	 private static final Logger logger = Logger.getLogger(DBConnection.class.getName());
	 
	 private static DBConnection instance;
	 
	 private DBConnection() {
		 try {
			 Class.forName("com.mysql.jdbc.Driver");
		 } catch(ClassNotFoundException e) {
			 logger.log(Level.SEVERE, "MySQL JDBC Driver not found", e);
		 }
	 }
	 
	 public static DBConnection getInstance() {
		 if(instance == null) {
			 synchronized (DBConnection.class) {
				 if(instance == null) {
					 instance = new DBConnection();
				 }
			 }
		 }
		 return instance;
	 }

    public static Connection getConnection() {
        try {
           Class.forName("com.mysql.cj.jdbc.Driver");
           con = DriverManager.getConnection(url, user, pass);
            
            
        } catch (Exception e) {
        	System.out.println("Database Not Connect :");
           
        }
        return con;
    }

}
