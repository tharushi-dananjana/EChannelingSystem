package TPackage;

import java.util.List;

import TPackage.Doctormodel;


public interface IDoctorService {
	
	boolean createUser(Doctormodel doctor);
	Doctormodel getDoctor(int id);
	Doctormodel getDoctorByEmail(String email);
    
    List<Doctormodel> getAllDoctors();
    boolean updateUser(Doctormodel doctor);
    boolean delete(int id);

}

