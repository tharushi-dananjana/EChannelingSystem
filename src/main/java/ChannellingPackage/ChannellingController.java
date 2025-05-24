package ChannellingPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ChannellingController {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
public static boolean insertdata(String patientName, String doctorName, String specialization, String dayOfTheWeek) {
	boolean isSuccess = false;
	try {
		con = DBConnection.getConnection();
		stmt = con.createStatement();
		
		String sql = "insert into appointment values(0, '"+patientName+"', '"+doctorName+"', '"+specialization+"', '"+dayOfTheWeek+"')";
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
public static List<ChannellingModel> getById (String Id){
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList <ChannellingModel> appointment = new ArrayList<>();
	
	try {
		con = DBConnection.getConnection();
		stmt = con.createStatement();
		
		String sql = "select * from appointment where id '"+convertedID+"'";
		
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String patientName = rs.getString(2);
			String doctorName = rs.getString(3);
			String specialization = rs.getString(4);
			String dayOfTheWeek = rs.getString(5);
			
			ChannellingModel app = new ChannellingModel(id, patientName, doctorName, specialization, dayOfTheWeek) ;
			appointment.add(app);
			
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
		
	}
	return appointment;
	
	
}
//Get all data
public static List<ChannellingModel> getAllAppointment(){
	ArrayList <ChannellingModel> appointments = new ArrayList<>();
	
	try {
		con = DBConnection.getConnection();
		stmt = con.createStatement();
		
		String sql = "select * from appointment where id";
		
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String patientName = rs.getString(2);
			String doctorName = rs.getString(3);
			String specialization = rs.getString(4);
			String dayOfTheWeek = rs.getString(5);
			
			ChannellingModel app = new ChannellingModel(id, patientName, doctorName, specialization, dayOfTheWeek) ;
			appointments.add(app);
			
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
		
	}
	return appointments;
	
	
 }
//Update Data
public static boolean updatedata(String id,String patientName,String doctorName,String specialization,String dayOfTheWeek) {
	try {
		con=DBConnection.getConnection();
		stmt=con.createStatement();
		
		String sql ="update appointment set patientName='"+patientName+"',doctorName='"+doctorName+"',specialization='"+specialization+"',dayOfTheWeek='"+dayOfTheWeek+"'"
				+"where id='"+id+"'";
		
		int rs = stmt.executeUpdate(sql);
		
		if(rs>0) {
			isSuccess =true;
		}
		else {
			isSuccess =false;
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
		   con=DBConnection.getConnection();
			 stmt=con.createStatement();
			 String sql = "delete from appointment where id= '"+convID+"'";
			 int rs = stmt.executeUpdate(sql);
			 
			 if(rs>0) {
				 isSuccess =true;
			 }
			 else {
				 isSuccess =false;

			 }

	   }
	   catch(Exception e) {
		   e.printStackTrace();
	   }
	return isSuccess;
	   
	   

   }
   

}
