package mum.edu.cs425.mumBikeMgtSystem.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="donate")
public class Donate {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long donateId;
	
	@Column(name="bicycleId")
	private String bicycleId;
	
	@Column(name="userId")
	private String userId;
	
	@Column(name="date")
	private Date date;
	
	@Column(name="status")
	private String status;

}
