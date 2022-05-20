package main.java.com.solvd.Olympics.mainclass;

import java.util.Objects;

public class Federation {
	private int idFederation;
	private String name;
	private Country countryf;
	
	public Federation(int idFederation, String name) {
		this.idFederation = idFederation;
		this.name = name;
	}

	public int getIdFederation() {
		return idFederation;
	}

	public void setIdFederation(int idFederation) {
		this.idFederation = idFederation;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public Country getCountryf() {
		return countryf;
	}

	public void setCountryf(Country countryf) {
		this.countryf = countryf;
	}

	@Override
	public String toString() {
		return "Federation [idFederation=" + idFederation + ", name=" + name + ", hashCode()=" + hashCode()
				+ ", getIdFederation()=" + getIdFederation() + ", getName()=" + getName() + ", getClass()=" + getClass()
				+ ", toString()=" + super.toString() + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(idFederation, name);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Federation other = (Federation) obj;
		return idFederation == other.idFederation && Objects.equals(name, other.name);
	}

}
