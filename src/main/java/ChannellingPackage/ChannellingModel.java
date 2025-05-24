package ChannellingPackage;

public class ChannellingModel {
	private int id;
	private String patientName;
	private String doctorName;
	private String specialization;
	private String dayOfTheWeek;
	
	
	public ChannellingModel(int id, String patientName, String doctorName, String specialization, String dayOfTheWeek) {
		super();
		this.id = id;
		this.patientName = patientName;
		this.doctorName = doctorName;
		this.specialization = specialization;
		this.dayOfTheWeek = dayOfTheWeek;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getPatientName() {
		return patientName;
	}


	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}


	public String getDoctorName() {
		return doctorName;
	}


	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}


	public String getSpecialization() {
		return specialization;
	}


	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}


	public String getDayOfTheWeek() {
		return dayOfTheWeek;
	}


	public void setDayOfTheWeek(String dayOfTheWeek) {
		this.dayOfTheWeek = dayOfTheWeek;
	}
	
	
	
	
	

}
