package trg.talentsprint.starterkit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table (name="adpost")
public class AdPost {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int Aid;
	public int getAid() {
		return Aid;
	}
	public void setAid(int aid) {
		Aid = aid;
	}
	private String doctor_name;
	private String description;
	private long phno;
	private long userid;
	
	public long getUserid() {
		return userid;
	}
	public void setUserid(long userid) {
		this.userid = userid;
	}
	
	@ManyToOne
	@JoinColumn(name = "localityid",referencedColumnName = "localityid")
	private Locality locality;
	
	@ManyToOne
	@JoinColumn (name = "subcategoryid",referencedColumnName = "subcategoryid")
	private SubCategory subcategory;
	
	public String getDoctor_name() {
		return doctor_name;
	}
	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
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
	@Override
	public String toString() {
		return "AdPost [Aid=" + Aid + ", doctor_name=" + doctor_name + ", description=" + description + ", phno=" + phno
				+ ", userid=" + userid + ", locality=" + locality + ", subcategory=" + subcategory + "]";
	}

	
	
	
}
