package echannellingPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ChannellingController {
	
	//Connect DB
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt =null;
	private static ResultSet rs= null;
	
	//Insert Data Function
	public static boolean insertdata(String name, String email, String password) {
		
		boolean isSuccess = false;
		try {
			//DB CONNECTION CALL
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL QUERY
			String sql = "insert into new_table values(0, '"+name+"' , '"+email+"' , '"+password+"')";
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
	//GetById
	public static List<ChannellingModel> getById (String ID){
		
		int convertedID = Integer.parseInt(ID);
		
		ArrayList <ChannellingModel> channelling = new ArrayList<>();
		
		try {
			//DB CONNECTION
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//Query
			String sql = "select * from new_table where id '"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String password = rs.getString(4);
				
				ChannellingModel ch = new ChannellingModel(id,name,email,password);
				channelling.add(ch);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return channelling;
		
	}
	
	//GetAll Data
			public static List<ChannellingModel> getAllChannelling(){
				
				ArrayList <ChannellingModel> channellings = new ArrayList<>();
				
				try {
					//DB CONNECTION
					con=DBConnection.getConnection();
					stmt=con.createStatement();
					
					//Query
					String sql = "select * from new_table";
					
					rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
						int id = rs.getInt(1);
						String name = rs.getString(2);
						String email = rs.getString(3);
						String password = rs.getString(4);
						
						ChannellingModel ch = new ChannellingModel(id,name,email,password);
						channellings.add(ch);
					}
				}
				catch(Exception e) {
					e.printStackTrace();
				}
				return channellings;
			}
			
			//Update Data
			public static boolean updatedata(String id, String name, String email, String password) {
				try {
					//DB CONNECTION
					con=DBConnection.getConnection();
					stmt=con.createStatement();
					
					//SQL Query
					String sql ="update new_table set  name='"+name+"', email='"+email+"', password='"+password+"'"
					         +"where id='"+id+"'";
					
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
			
		//Delete Data	
		public static boolean deletedata(String id) {
			int convID = Integer.parseInt(id);
			try {
				//DBConnection
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				String sql = "delete from new_table where id='"+convID+"'";
				
				int rs = stmt.executeUpdate(sql);
				
				if(rs>0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
			}
			catch(Exception e) {
				
			}
			return isSuccess;
		}	
			
		//Login Validate	
		public static List<ChannellingModel> loginValidate(String email, String password){
			
			ArrayList <ChannellingModel> channelling = new ArrayList<>();
			try {
				//DBConnection
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				
				String sql = "select * from new_table where email='"+email+"'and password='"+password+"'";
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String gmail = rs.getString(3);
					String pass = rs.getString(4);
					
					ChannellingModel ch = new ChannellingModel(id,name,gmail,pass);
					channelling.add(ch);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return channelling;
			
		}
}
