package main.java.com.solvd.Olympics.mainclass;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Objects;

public class Program {
	private int idProgram;
	private Date date;
	private LocalDateTime start;
	private LocalDateTime finish;
	private Setting set;
	private HashSet<Judge> judges = new HashSet<Judge>();
	private LinkedHashSet<Competition> competitions = new LinkedHashSet<Competition>();
	
	public Program(int idProgram, Date date, LocalDateTime start, LocalDateTime finish, Setting set) {
		this.idProgram = idProgram;
		this.date = date;
		this.start = start;
		this.finish = finish;
		this.set = set;
	}
	
	public LinkedHashSet<Competition> getCompetitions() {
		return competitions;
	}


	public void setCompetitions(LinkedHashSet<Competition> competitions) {
		this.competitions = competitions;
	}


	public HashSet<Judge> getJudges() {
		return judges;
	}

	public void setJudges(HashSet<Judge> judges) {
		this.judges = judges;
	}

	public int getIdProgram() {
		return idProgram;
	}

	public void setIdProgram(int idProgram) {
		this.idProgram = idProgram;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public LocalDateTime getStart() {
		return start;
	}

	public void setStart(LocalDateTime start) {
		this.start = start;
	}

	public LocalDateTime getFinish() {
		return finish;
	}

	public void setFinish(LocalDateTime finish) {
		this.finish = finish;
	}

	public Setting getSet() {
		return set;
	}

	public void setSet(Setting set) {
		this.set = set;
	}

	@Override
	public int hashCode() {
		return Objects.hash(competitions, date, finish, idProgram, judges, set, start);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Program other = (Program) obj;
		return Objects.equals(competitions, other.competitions) && Objects.equals(date, other.date)
				&& Objects.equals(finish, other.finish) && idProgram == other.idProgram
				&& Objects.equals(judges, other.judges) && Objects.equals(set, other.set)
				&& Objects.equals(start, other.start);
	}

	@Override
	public String toString() {
		return "Program [idProgram=" + idProgram + ", date=" + date + ", start=" + start + ", finish=" + finish
				+ ", set=" + set + ", judges=" + judges + ", competitions=" + competitions + "]";
	}
	
}
