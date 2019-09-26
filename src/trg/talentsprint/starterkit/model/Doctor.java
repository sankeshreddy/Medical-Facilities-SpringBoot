package trg.talentsprint.starterkit.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table (name="doctor")
public class Doctor {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int d_id;
	private String dname;
	private String d_description;
	private long dcontact;
	private int localityid;
	private int subcategoryid;
	
	@OneToMany(mappedBy = "did")
	List<MyFavourite> did;
	public int getD_id() {
		return d_id;
	}
	public void setD_id(int d_id) {
		this.d_id = d_id;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getD_description() {
		return d_description;
	}
	public void setD_description(String d_description) {
		this.d_description = d_description;
	}
	public long getDcontact() {
		return dcontact;
	}
	public void setDcontact(long dcontact) {
		this.dcontact = dcontact;
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
