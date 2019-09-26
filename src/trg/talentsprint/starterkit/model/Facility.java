package trg.talentsprint.starterkit.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table (name="facility")
public class Facility {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int f_id;
	private String fname;
	private String f_description;
	private long fcontact;
	private int localityid;
	private int subcategoryid;
	
	@OneToMany(mappedBy = "fid")
	List<FacilityFavourite> fid;
	public int getF_id() {
		return f_id;
	}
	public void setF_id(int f_id) {
		this.f_id = f_id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getF_description() {
		return f_description;
	}
	public void setF_description(String f_description) {
		this.f_description = f_description;
	}
	public long getFcontact() {
		return fcontact;
	}
	public void setFcontact(long fcontact) {
		this.fcontact = fcontact;
	}
	public int getLocalityid() {
		return localityid;
	}
	public void setLocalityid(int localityid) {
		this.localityid = localityid;
	}
	public int getSubcategoryid() {
		return subcategoryid;
	}
	public void setSubcategoryid(int subcategoryid) {
		this.subcategoryid = subcategoryid;
	}
	
	
}
