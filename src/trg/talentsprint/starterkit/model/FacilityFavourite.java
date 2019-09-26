package trg.talentsprint.starterkit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "facilityfavourite")
public class FacilityFavourite {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ffid;
	
	@ManyToOne
	@JoinColumn()
	private Facility fid;

	public int getFfid() {
		return ffid;
	}

	public void setFfid(int ffid) {
		this.ffid = ffid;
	}

	public Facility getFid() {
		return fid;
	}

	public void setFid(Facility fid) {
		this.fid = fid;
	}
	
	
	
}
