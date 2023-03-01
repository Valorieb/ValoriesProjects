package com.val.candystore.entity;

import java.math.BigDecimal;


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
@Table(name = "products")
@Data

@Getter
@Setter

public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column (name="product_id")
	
	private Long id;
	
	@ManyToOne
	@JoinColumn (name = "product_category_id_fk", nullable = false)
	private ProductCategory category;
	
	@Column (name="sku")
	private String sku;
	
	@Column (name="ch_name")
	private String name;
	
	@Column (name="description")
	private String description;
	
	@Column (name="price")
	private BigDecimal unitPrice;
	
	@Column (name="image_url")
	private String imageUrl;
	
	
	
	
	
	

}
