package com.kakarot.lokacija.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "lokacija")
public class Lokacija {
	
	@Id
	private int id;
	private String continent;
	private String country;
	private String code;
	private String name;
	private String type;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public String getContinent() {
		return continent;
	}
	public void setContinent(String continent) {
		this.continent = continent;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	public Lokacija(int id, String continent, String country, String code, String name, String type) {
		this.id = id;
		this.continent = continent;
		this.country = country;
		this.code = code;
		this.name = name;
		this.type = type;
	}
	public Lokacija() {
	}

}
