package in.itpcst;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

//mark class as an Entity   
@Entity  
//defining class name as Table name  
@Table
public class Reservation {
	@Id  
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	//@Column 
	//private int  rid;
	@Column 
	private String firstName;  
	@Column 
    private String lastName;
	
	@Column 
    private String gender;
	@Column 
    private String food;
	@Column 
    private String cityFrom;
	@Column 
    private String cityTo;
		
      
    public Reservation()  
    {         
    }  
    public String getFirstName() {  
        return firstName;  
    }  
    public void setFirstName(String firstName) {  
        this.firstName = firstName;  
    }  
    public String getLastName() {  
        return lastName;  
    }  
    public void setLastName(String lastName) {  
        this.lastName = lastName;  
    }
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getFood() {
		return food;
	}
	public void setFood(String food) {
		this.food = food;
	}
	public String getCityFrom() {
		return cityFrom;
	}
	public void setCityFrom(String cityFrom) {
		this.cityFrom = cityFrom;
	}
	public String getCityTo() {
		return cityTo;
	}
	public void setCityTo(String cityTo) {
		this.cityTo = cityTo;
	}
	
	
	
    
}
