package main.java.com.solvd.Olympics.mainclass;

import java.util.Objects;

public class Judge {
	private int idJudge;
	private String name;
	private int age;
	private String address;
	
	public Judge(int idJudge, String name, int age, String address) {
		super();
		this.idJudge = idJudge;
		this.name = name;
		this.age = age;
		this.address = address;
	}

	@Override
	public String toString() {
		return "Judge [idJudge=" + idJudge + ", name=" + name + ", age=" + age + ", address=" + address + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(address, age, idJudge, name);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Judge other = (Judge) obj;
		return Objects.equals(address, other.address) && age == other.age && idJudge == other.idJudge
				&& Objects.equals(name, other.name);
	}

	public int getIdJudge() {
		return idJudge;
	}

	public void setIdJudge(int idJudge) {
		this.idJudge = idJudge;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
}
