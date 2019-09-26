package trg.talentsprint.starterkit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="adpost")
public class AdPost {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int Aid;
     public int getAid() {
		return Aid;
	}
	public void setAid(int aid) {
		Aid = aid;
	}
	private String doctor_name;
     private String Description;
     
     private long phno;
     
     @ManyToOne
     @JoinColumn(name="localityid",referencedColumnName="localityid")
	private Locality  locality;
    
     @ManyToOne
     @JoinColumn(name="subcategoryid",referencedColumnName="subcategoryid")
	private SubCategory  subcategory;
     
     public SubCategory getSubcategory() {
		return subcategory;
	}
	public void setSubcategory(SubCategory subcategory) {
		this.subcategory = subcategory;
	}
	public String getDescription() {
 		return Description;
 	}
 	public void setDescription(String description) {
 		Description = description;
 	}
 	public Locality getLocality() {
 		return locality;
 	}
 	public void setLocality(Locality locality) {
 		this.locality = locality;
 	}
	public long getPhno() {
		return phno;
	}
	public void setPhno(long phno) {
		this.phno = phno;
	}
	public String getDoctor_name() {
		return doctor_name;
	}
	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
	}
	@Override
	public String toString() {
		return "AdPost [Aid=" + Aid + ", doctor_name=" + doctor_name + ", Description=" + Description + ", phno=" + phno
				+ ", locality=" + locality + ", subcategory=" + subcategory + "]";
	}
	
	
	 	
}
