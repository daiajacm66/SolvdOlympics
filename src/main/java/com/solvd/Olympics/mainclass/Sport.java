package main.java.com.solvd.Olympics.mainclass;

import java.util.Objects;

public class Sport {
	private int idSport;
	private String name;
	public Sport(int idSport, String name) {
		this.idSport = idSport;
		this.name = name;
	}
	
	public int getIdSport() {
		return idSport;
	}
	
	public void setIdSport(int idSport) {
		this.idSport = idSport;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(idSport, name);
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Sport other = (Sport) obj;
		return idSport == other.idSport && Objects.equals(name, other.name);
	}
	
	@Override
	public String toString() {
		return "Sport [idSport=" + idSport + ", name=" + name + "]";
	}
	
	
}
