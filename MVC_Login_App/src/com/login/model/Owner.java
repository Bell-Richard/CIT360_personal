package MVC_Login_App.src.com.login.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.mapping.Set;


public class Owner implements Serializable {

	//-----------------//
	// Column mappings //
	//-----------------//
	private int id;
	private String firstName;
	private String lastName;
	private String gender;
	
//	private Set<Car> cars;
	
	//--------------//
	// Constructors //
	//--------------//
	public Owner () {
		
	}
	
	public Owner (String aFirstName, String aLastName, String aGender) {
		this.firstName = aFirstName;
		this.lastName = aLastName;
		this.gender = aGender;
	}
	
	//---------------------//
	// Getters and Setters //
	//---------------------//
	public String toString() {
		return "Owner: [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", gender=" + gender + "]";
	}
	
	// Owner ID
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer anId) {
		this.id = anId;
	}
	
	// First Name
	public String getFirstName() {
		return this.firstName;
	}
	
	public void setFirstName(String aName) {
		this.firstName = aName;
	}
	
	// Last Name
	public String getLastName() {
		return this.lastName;
	}
	
	public void setLastName(String aName) {
		this.lastName = aName;
	}
	
	// Gender
	public String getGender() {
		return this.gender;
	}
	
	public void setGender(String aGender) {
		this.gender = aGender;
	}
	
	// Cars
//	public Set<Car> getCars() {
//		return this.cars;
//	}
	
//	public void setCars(Set<Car> someCars) {
//		this.cars = someCars;
//	}
//	
	// Full name getter
	public String getFullName() {
		return this.firstName + " " + this.lastName;
	}
	
}
