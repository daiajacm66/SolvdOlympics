package main.java.com.solvd.Olympics.mainclass;

import java.util.Objects;

public class Result {
	private int idResult;
	private int position;
	private Medal medal;
	
	public Result(int idResult, int position, Medal medal) {
		super();
		this.idResult = idResult;
		this.position = position;
		this.medal = medal;
	}
	
	public int getIdResult() {
		return idResult;
	}
	
	public void setIdResult(int idResult) {
		this.idResult = idResult;
	}
	
	public int getPosition() {
		return position;
	}
	
	public void setPosition(int position) {
		this.position = position;
	}
	
	public Medal getMedal() {
		return medal;
	}
	
	public void setMedal(Medal medal) {
		this.medal = medal;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(idResult, medal, position);
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Result other = (Result) obj;
		return idResult == other.idResult && Objects.equals(medal, other.medal) && position == other.position;
	}
	
	@Override
	public String toString() {
		return "Result [idResult=" + idResult + ", position=" + position + ", medal=" + medal + "]";
	}
	
}
