package red01;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "STUDENTS")
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "student_ID")
	private long id;

	@Column(name = "FIRST_NAME")
	private String firstName;

	@Column(name = "LAST_NAME")
	private String lastName;

	@Column(name = "University_number")
	private String number;

	@Column(name = "email")
	private String email;

	@Column(name = "password")
	private String password;

	@Column(name = "room_ID")
	private Integer roomId;

	@Column(name = "slot_ID")
	private Integer slotId;
	
	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public Integer getRoomId() {
		return roomId;
	}

	public void setRoomId(Integer roomId) {
		this.roomId = roomId;
	}

	public Integer getSlotId() {
		return slotId;
	}

	public void setSlotId(Integer slotId) {
		this.slotId = slotId;
	}

	public Student() {
	}

	public Student(String firstName, String lastName, String number, String email, String password) {
		this.firstName=firstName;
		this.lastName=lastName;
		this.number=number;
		this.email=email;
		this.password=password;
		
	}

	public long getId() {
		return id;
	}
	
}
