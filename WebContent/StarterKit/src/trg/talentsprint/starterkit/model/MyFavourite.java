package trg.talentsprint.starterkit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "myfavourite")
public class MyFavourite {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int fid;
	
	@ManyToOne
	@JoinColumn()
	private Doctor did;

	
	public Doctor getDid() {
		return did;
	}

	public void setDid(Doctor did) {
		this.did = did;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

}
