package TPackage;

public class Doctormodel extends Personmodel {
	
	private int id;
	private String password;
	private String filename;


	public int getId() {
		return id;
	}
	
	public String getPassword() {
		return password;
	}
	public String getFilename() {
		return filename;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	

}