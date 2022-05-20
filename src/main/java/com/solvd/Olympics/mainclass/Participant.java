package main.java.com.solvd.Olympics.mainclass;

import java.util.Objects;

public class Participant {
	private int idParticipant;
	private String name;
	private String age;
	private boolean sex;
	private int telephone;
	private Federation idFed;
	
	public Participant(int idParticipant, String name, String age, boolean sex, int telephone, Federation idFed) {
		this.idParticipant = idParticipant;
		this.name = name;
		this.age = age;
		this.sex = sex;
		this.telephone = telephone;
		this.idFed = idFed;
	}

	public int getIdParticipant() {
		return idParticipant;
	}

	public void setIdParticipant(int idParticipant) {
		this.idParticipant = idParticipant;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public boolean isSex() {
		return sex;
	}

	public void setSex(boolean sex) {
		this.sex = sex;
	}

	public int getTelephone() {
		return telephone;
	}

	public void setTelephone(int telephone) {
		this.telephone = telephone;
	}

	public Federation getIdFed() {
		return idFed;
	}

	public void setIdFed(Federation idFed) {
		this.idFed = idFed;
	}

	@Override
	public String toString() {
		return "Participant [idParticipant=" + idParticipant + ", name=" + name + ", age=" + age + ", sex=" + sex
				+ ", telephone=" + telephone + ", idFed=" + idFed + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(age, idFed, idParticipant, name, sex, telephone);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Participant other = (Participant) obj;
		return Objects.equals(age, other.age) && Objects.equals(idFed, other.idFed)
				&& idParticipant == other.idParticipant && Objects.equals(name, other.name) && sex == other.sex
				&& telephone == other.telephone;
	}
	
	
}
