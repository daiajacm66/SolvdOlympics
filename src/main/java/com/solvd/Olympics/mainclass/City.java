package main.java.com.solvd.Olympics.mainclass;

import java.util.Objects;

public class City {
	private int idCity;
	private String name;
	
	public City(int idCity, String name) {
		super();
		this.idCity = idCity;
		this.name = name;
	}

	public int getIdCity() {
		return idCity;
	}

	public void setIdCity(int idCity) {
		this.idCity = idCity;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "City [idCity=" + idCity + ", name=" + name + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(idCity, name);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		City other = (City) obj;
		return idCity == other.idCity && Objects.equals(name, other.name);
	}
	
	
}
