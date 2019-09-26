package trg.talentsprint.starterkit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "adpost1")
public class AdPost1 {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int Aid;

	public int getAid() {
		return Aid;
	}

	public void setAid(int aid) {
		Aid = aid;
	}
	
	private String facility_name;
	
	private String Description;
	
	private long phno;
	
	@ManyToOne
	@JoinColumn(name = "localityid", referencedColumnName = "localityid")
	private Locality locality;
	
	@ManyToOne
	@JoinColumn(name = "subcategoryid", referencedColumnName = "subcategoryid")
	private SubCategory subcategory;

	public String getFacility_name() {
		return facility_name;
	}

	public void setFacility_name(String facility_name) {
		this.facility_name = facility_name;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public long getPhno() {
		return phno;
	}

	public void setPhno(long phno) {
		this.phno = phno;
	}

	public Locality getLocality() {
		return locality;
	}

	public void setLocality(Locality locality) {
		this.locality = locality;
	}

	public SubCategory getSubcategory() {
		return subcategory;
	}

	public void setSubcategory(SubCategory subcategory) {
		this.subcategory = subcategory;
	}
	
	
}
