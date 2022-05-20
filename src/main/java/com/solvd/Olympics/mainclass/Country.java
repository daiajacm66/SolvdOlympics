package main.java.com.solvd.Olympics.mainclass;

import java.util.Objects;

public class Country {
	private int idCountry;
	private String name;
	
	
	public Country(int idCountry, String name) {
		this.idCountry = idCountry;
		this.name = name;
	}

	public int getIdCountry() {
		return idCountry;
	}

	public void setIdCountry(int idCountry) {
		this.idCountry = idCountry;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public int hashCode() {
		return Objects.hash(idCountry, name);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Country other = (Country) obj;
		return idCountry == other.idCountry && Objects.equals(name, other.name);
	}

	@Override
	public String toString() {
		return "Country [idCountry=" + idCountry + ", name=" + name + ", getIdCountry()=" + getIdCountry()
				+ ", getName()=" + getName() + ", hashCode()=" + hashCode() + ", getClass()=" + getClass()
				+ ", toString()=" + super.toString() + "]";
	}
	
}
