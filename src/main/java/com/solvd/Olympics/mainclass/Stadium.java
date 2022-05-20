package main.java.com.solvd.Olympics.mainclass;

import java.util.Objects;

public class Stadium {
	private int idStadium;
	private String name;
	private City city;
	
	public Stadium(int idStadium, String name, City city) {
		this.idStadium = idStadium;
		this.name = name;
		this.city = city;
	}

	@Override
	public String toString() {
		return "Stadium [idStadium=" + idStadium + ", name=" + name + ", city=" + city + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(city, idStadium, name);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Stadium other = (Stadium) obj;
		return Objects.equals(city, other.city) && idStadium == other.idStadium && Objects.equals(name, other.name);
	}

	public int getIdStadium() {
		return idStadium;
	}

	public void setIdStadium(int idStadium) {
		this.idStadium = idStadium;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}
	
}
