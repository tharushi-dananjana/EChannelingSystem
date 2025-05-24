package TPackage;

import TPackage.DBConnection;

import TPackage.Doctormodel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.print.Doc;

public class DoctorService implements IDoctorService {

	    // Create Doctor
		@Override
	    public boolean createUser(Doctormodel doctor) {
	        String query = "INSERT INTO doctorDash (name, email, password, filename) VALUES (?, ?, ?, ?)";
	        try (Connection connection = DBConnection.getConnection();
	             PreparedStatement stmt = connection.prepareStatement(query)) {
	            stmt.setString(1, doctor.getName());
	            stmt.setString(2, doctor.getEmail());
	            stmt.setString(3, doctor.getPassword());
	            
	            stmt.setString(4, doctor.getFilename());
	            return stmt.executeUpdate() > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return false;
	    }

	    // Get Doctor by ID
		@Override
	    public Doctormodel getDoctor(int id) {
	        String query = "SELECT * FROM doctorDash WHERE id = ?";
	        try (Connection connection = DBConnection.getConnection();
	             PreparedStatement stmt = connection.prepareStatement(query)) {
	              stmt.setInt(1, id);
	            ResultSet rs = stmt.executeQuery();
	            if (rs.next()) {
	            	Doctormodel doctor = new Doctormodel();
	            	doctor.setId(rs.getInt("id"));
	            	doctor.setName(rs.getString("name"));
	            	doctor.setEmail(rs.getString("email"));
	            	doctor.setPassword(rs.getString("password"));
	            	
	            	doctor.setFilename(rs.getString("filename"));
	                return doctor;
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return null;
	    }
	    
	 // Get Doctor by Email
		@Override
	    public Doctormodel getDoctorByEmail(String email) {
	        String query = "SELECT * FROM doctorDash WHERE email = ?";
	        try (Connection connection = DBConnection.getConnection();
	             PreparedStatement stmt = connection.prepareStatement(query)) {
	            stmt.setString(1, email);
	            ResultSet rs = stmt.executeQuery();
	            if (rs.next()) {
	            	Doctormodel doctor = new Doctormodel();
	            	doctor.setId(rs.getInt("id"));
	            	doctor.setName(rs.getString("name"));
	            	doctor.setEmail(rs.getString("email"));
	            	doctor.setPassword(rs.getString("password"));
	            	
	            	doctor.setFilename(rs.getString("filename") != null ? rs.getString("filename") : "default.png");
	                return doctor;
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return null;
	    }

	    // Get All Doctors
		@Override
	    public List<Doctormodel> getAllDoctors() {
	        List<Doctormodel> doctors = new ArrayList<>();
	        String query = "SELECT * FROM doctorDash";
	        try (Connection connection = DBConnection.getConnection();
	             Statement stmt = connection.createStatement()) {
	            ResultSet rs = stmt.executeQuery(query);
	            while (rs.next()) {
	            	Doctormodel doctor = new Doctormodel();
	                doctor.setId(rs.getInt("id"));
	                doctor.setName(rs.getString("name"));
	                doctor.setEmail(rs.getString("email"));
	                doctor.setPassword(rs.getString("password"));
	                
	                doctor.setFilename(rs.getString("filename"));
	                doctors.add(doctor);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return doctors;
	    }
		
		
	    // Update Doctor
		@Override
	    public boolean updateUser(Doctormodel doctor) {
	        String query = "UPDATE doctorDash SET name = ?, email = ?, password = ?, filename = ? WHERE id = ?";
	        try (Connection connection = DBConnection.getConnection();
	             PreparedStatement stmt = connection.prepareStatement(query)) {
	            stmt.setString(1, doctor.getName());
	            stmt.setString(2, doctor.getEmail());
	            stmt.setString(3, doctor.getPassword());
	            
	            stmt.setString(4, doctor.getFilename());
	            stmt.setInt(5, doctor.getId());
	            return stmt.executeUpdate() > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return false;
	    }
	    
	    // Delete Doctor
		@Override
	    public boolean delete(int id) {
	        String query = "DELETE FROM doctorDash WHERE id = ?";
	        try (Connection connection = DBConnection.getConnection();
	             PreparedStatement stmt = connection.prepareStatement(query)) {
	            stmt.setInt(1, id);
	            return stmt.executeUpdate() > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return false;
	    }
	}