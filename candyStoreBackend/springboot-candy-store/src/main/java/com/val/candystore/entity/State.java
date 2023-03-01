package com.val.candystore.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table (name= "state")
@Data
@Getter
@Setter

public class State {
	

		@Id
		@GeneratedValue (strategy = GenerationType.IDENTITY)
		@Column(name="state_id")
		
		private int state_id;
		
		
		@Column(name="name_state")
		private String name_state;
		
		@ManyToOne
		@JoinColumn (name="country_id_fk")
		private Country country;
		
		
		


}
