package red01;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "STUDENTS")
public class Students {
	@Id
	@Column(name = "student_ID")
	private long id;

	@Column(name = "FIRST_NAME")
	private String firstName;

	@Column(name = "LAST_NAME")
	private String lastName;

	@Column(name = "University_number")
	private String university_number;

	@Column(name = "email")
	private String email;

	@Column(name = "city")
	private String city;

	public String getUniversity_number() {
		return university_number;
	}

	public void setUniversity_number(String university_number) {
		this.university_number = university_number;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	public int getSlotId() {
		return slotId;
	}

	public void setSlotId(int slotId) {
		this.slotId = slotId;
	}

	@Column(name = "room_ID")
	private int roomId;

	@Column(name = "slot_ID")
	private int slotId;

	public Students() {
	}
	
}
