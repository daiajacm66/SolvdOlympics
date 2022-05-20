package main.java.com.solvd.Olympics.mainclass;

import java.sql.Time;
import java.util.HashSet;
import java.util.Objects;

public class Competition {
	private int idCompetition;
	private Time start;
	private Time finish;
	private Sport sport;
	private Category category;
	private	HashSet<Participant> participants = new HashSet<Participant>();
	
	public Competition(int idCompetition, Time start, Time finish, Sport sport, Category category) {
		this.idCompetition = idCompetition;
		this.start = start;
		this.finish = finish;
		this.sport = sport;
		this.category = category;
	}
	
	public Category getCategory() {
		return category;
	}
	
	public void setCategory(Category category) {
		this.category = category;
	}
	
	public Sport getSport() {
		return sport;
	}

	public void setSport(Sport sport) {
		this.sport = sport;
	}

	public HashSet<Participant> getParticipants() {
		return participants;
	}
	
	public void setParticipants(HashSet<Participant> participants) {
		this.participants = participants;
	}
	
	public int getIdCompetition() {
		return idCompetition;
	}
	
	public void setIdCompetition(int idCompetition) {
		this.idCompetition = idCompetition;
	}
	
	public Time getStart() {
		return start;
	}
	
	public void setStart(Time start) {
		this.start = start;
	}
	
	public Time getFinish() {
		return finish;
	}
	
	public void setFinish(Time finish) {
		this.finish = finish;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(finish, idCompetition, participants, sport, start, category);
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Competition other = (Competition) obj;
		return Objects.equals(finish, other.finish) && idCompetition == other.idCompetition
				&& Objects.equals(participants, other.participants) && Objects.equals(sport, other.sport)
				&& Objects.equals(start, other.start) && Objects.equals(category, other.category);
	}
	
	@Override
	public String toString() {
		return "Competition [idCompetition=" + idCompetition + ", start=" + start + ", finish=" + finish + ", sport="
				+ sport + ", participants=" + participants + "category" + category + "]";
	}
	
}
