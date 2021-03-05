package red01;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import javax.persistence.Table;

@Entity 

@Table(name = "MANAGERS")
public class Manager{
	@Id
	@Column(name = "Manager_ID")
	private long id;
	
	
	@Column(name = "manager_name")
	private String name;
	
	@Column(name = "manager_surname")
	private String surname;
	
	@Column(name = "email")
	private String mail;
	
	@Column(name = "password")
	private String password;
	
	
	@Column(name = "phone_number")
	private String phone;
	
	@Column(name = "organization_name")
	private String organization;
	
	public Manager() {
		
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}
	

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getOrganization() {
		return organization;
	}

	public void setOrganization(String organization) {
		this.organization = organization;
	}
	
}


	