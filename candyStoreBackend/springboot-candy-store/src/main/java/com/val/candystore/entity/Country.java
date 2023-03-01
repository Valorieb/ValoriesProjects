package com.val.candystore.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table (name= "country")
@Getter
@Setter
public class Country {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	@Column(name="country_id")
	private int country_id;
	
	@Column(name="code")
	private String code;
	
	@Column(name="name_country")
	private String name_country;
	
	
	@OneToMany(mappedBy = "country")
	@JsonIgnore
	private List<State>states;
}
