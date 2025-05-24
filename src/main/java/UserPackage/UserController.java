package UserPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import UserPackage.UserModel;
import echannellingPackage.DBConnection;

public class UserController {
	//Connect DB
	
			private static boolean isSuccess;
			private static Connection con = null;
			private static Statement stmt = null;
			private static ResultSet rs = null;
			
			//Insert Data Function
			public static boolean insertdata(String name, String email, String phoneNo, String role, String password) {
				boolean isSuccess = false;
				try {
					//DB Connection Call
					con=DBConnection.getConnection();
					stmt=con.createStatement();
					
					//SQL Query
					String sql = "Insert into user values(0,'"+name+"','"+email+"','"+phoneNo+"','"+role+"','"+password+"')";
					int rs = stmt.executeUpdate(sql);
					
					if(rs>0) {
						isSuccess = true;
					}
					else {
						isSuccess = false;
					}
					
				}catch(Exception e) {
						e.printStackTrace();
						
					}
					
					return isSuccess;
				
			}
			
			//Login Validate
			//Login Validate
			public static List<UserModel> loginValidate(String email, String password) {
			    ArrayList<UserModel> user = new ArrayList<>();
			    try {
			        // DB Connection call
			        con = DBConnection.getConnection();
			        stmt = con.createStatement();
			        
			        String sql = "SELECT * FROM user WHERE email= '"+email+"' AND password= '"+password+"'";
			        rs = stmt.executeQuery(sql);
			        
			        if (rs.next()) {
			            int id = rs.getInt(1);
			            String name = rs.getString(2);
			            String gmail = rs.getString(3);
			            String phoneNo = rs.getString(4);
			            String role = rs.getString(5);
			            String pass = rs.getString(6);  
			            
			            UserModel u = new UserModel(id, name, gmail, phoneNo, role, pass);
			            user.add(u);    
			        }
			        
			    } catch (Exception e) {
			        e.printStackTrace();
			    }
			    
			    return user;
			}
			
			public static List<UserModel> userProfile(String Id){
				int convertID = Integer.parseInt(Id);
				
				ArrayList<UserModel> user = new ArrayList<>();
				
				try {
					//DB connection call
					con=DBConnection.getConnection();
					stmt=con.createStatement();
					
					String sql = "select * from user where id='"+convertID+"' ";
					rs = stmt.executeQuery(sql);
				        
				        if (rs.next()) {
				            int id = rs.getInt(1);
				            String name = rs.getString(2);
				            String email = rs.getString(3);
				            String phoneNo = rs.getString(4);
				            String role = rs.getString(5);
				            String password = rs.getString(6);  
				            
				            UserModel u = new UserModel(id, name, email, phoneNo, role, password);
				            user.add(u);    
				        }
				}catch(Exception e) {
					e.printStackTrace();
				}
				return user;
			}	
				//Data Connect to the Database
				
			// Data Connect to the Database
			public List<UserModel> getAllUser() {
			    List<UserModel> users = new ArrayList<>();

			    try {
			        // Use DBConnection class to get the connection
			    	 Connection conn = DBConnection.getConnection();
			         String sql = "SELECT * FROM user";
			         PreparedStatement stmt = conn.prepareStatement(sql);
			         ResultSet rs = stmt.executeQuery();

			        
			
			       
			      
			        while (rs.next()) {
			        	UserModel user = new UserModel();
			        	 user.setId(rs.getInt("id"));
			             user.setName(rs.getString("name"));
			             user.setEmail(rs.getString("email"));
			             user.setPhoneNo(rs.getString("phoneNo"));
			             user.setRole(rs.getString("role"));
			             users.add(user);
			           
			            
			        }
			        
			 		        conn.close();
			    
			    } catch (Exception e) {
			        e.printStackTrace();
			    }
			    
			    return users;
			}

				
				
			
				
			//User Profile Update
			public static boolean updateprofile(String id, String name, String email,String phoneNo,String role) {
				try {
					//DBConnection
					
					con = DBConnection.getConnection();
					stmt=con.createStatement();
					
					//SQL Query
					String sql ="update user set name ='"+name+"', email = '"+email+"', phoneNo = '"+phoneNo+"', role ='"+role+"'"
							+"where id='"+id+"'";
					
					int rs = stmt.executeUpdate(sql);
					
					if(rs > 0) {
						isSuccess = true;
					}
					
					else {
						isSuccess = false;
					}
					
				}
				catch(Exception e) {
					e.printStackTrace();
				}	
				return isSuccess;	
			}

			//GetById
			public static List<UserModel> getById (String Id){
				
				int convertedID = Integer.parseInt(Id);
				ArrayList<UserModel> user = new ArrayList<>();
				
				try {
					//DBConnection
					con=DBConnection.getConnection();
					stmt=con.createStatement();
					
					//Query
					String sql = "select * from user where id '"+convertedID+"'";
					
					rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
						int id = rs.getInt(1);
						String name = rs.getString(2);
						String email = rs.getString(3);
						String phoneNo = rs.getString(4);
						String role = rs.getString(5);
						String password = rs.getString(2);
						
						UserModel u = new UserModel(id,name,email,phoneNo,role,password);
						user.add(u);
						
					}	
				}catch(Exception e) {
					e.printStackTrace();
				}
				
				return user;
				
			}
			
			//User profile delete
			
			public static boolean deleteAccount(String id) {
			
				try {	
					int convID = Integer.parseInt(id);
					con=DBConnection.getConnection();
					stmt=con.createStatement();
					
					String sql ="delete from user where id='"+convID+"'";
					
					int rs = stmt.executeUpdate(sql);
					if(rs>0) {
						isSuccess = true;
					}
					else {
						isSuccess = false;
					}
					
				}
				
				catch(Exception e) {
					e.printStackTrace();
				}
				return isSuccess;
			}
			
			

}

