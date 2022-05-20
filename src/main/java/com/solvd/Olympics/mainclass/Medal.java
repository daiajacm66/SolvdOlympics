package main.java.com.solvd.Olympics.mainclass;

import java.util.Objects;

public class Medal {
	private int idMedal;
	private String type;
	
	public Medal(int idMedal, String type) {
		super();
		this.idMedal = idMedal;
		this.type = type;
	}
	
	public int getIdMedal() {
		return idMedal;
	}
	
	public void setIdMedal(int idMedal) {
		this.idMedal = idMedal;
	}
	
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(idMedal, type);
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Medal other = (Medal) obj;
		return idMedal == other.idMedal && Objects.equals(type, other.type);
	}
	
	@Override
	public String toString() {
		return "Medal [idMedal=" + idMedal + ", type=" + type + "]";
	}
	
	
}
