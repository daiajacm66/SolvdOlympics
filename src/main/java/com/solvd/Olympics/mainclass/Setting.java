package main.java.com.solvd.Olympics.mainclass;

import java.util.Objects;

public class Setting {
	private int idSetting;
	private String name;
	private Stadium idSt;
	
	public Setting(int idSetting, String name, Stadium idSt) {
		this.idSetting = idSetting;
		this.name = name;
		this.idSt = idSt;
	}

	public int getIdSetting() {
		return idSetting;
	}

	public void setIdSetting(int idSetting) {
		this.idSetting = idSetting;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Stadium getIdSt() {
		return idSt;
	}

	public void setIdSt(Stadium idSt) {
		this.idSt = idSt;
	}

	@Override
	public int hashCode() {
		return Objects.hash(idSetting, idSt, name);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Setting other = (Setting) obj;
		return idSetting == other.idSetting && Objects.equals(idSt, other.idSt) && Objects.equals(name, other.name);
	}

	@Override
	public String toString() {
		return "Setting [idSetting=" + idSetting + ", name=" + name + ", idSt=" + idSt + "]";
	}
	
}
