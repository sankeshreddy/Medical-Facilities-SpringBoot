package trg.talentsprint.starterkit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "locality")
public class Locality {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int localityid;
	private String localityname;
	private int status;
	private int cityid;
	public int getLocalityid() {
		return localityid;
	}
	public void setLocalityid(int localityid) {
		this.localityid = localityid;
	}
	public String getLocalityname() {
		return localityname;
	}
	public void setLocalityname(String localityname) {
		this.localityname = localityname;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getCityid() {
		return cityid;
	}
	public void setCityid(int cityid) {
		this.cityid = cityid;
	}
	
	
	
	
}
