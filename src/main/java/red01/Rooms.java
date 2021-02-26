package red01;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ROOMS")
public class Rooms {
	@Id
	@Column(name = "Room_ID")
	private long id;

	@Column(name = "Capacity")
	private int capacity;

	@Column(name = "Location")
	private String location;

	@Column(name = "Address")
	private String address;

	@Column(name = "City")
	private String city;

	@Column(name = "Organization_ID")
	private int organizationId;

	@Column(name = "Silent")
	private String silent;

	public Rooms() {

	}
}
