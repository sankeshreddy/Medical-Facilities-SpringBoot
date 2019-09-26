package trg.talentsprint.starterkit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "subcategory")
public class SubCategory {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int subcategoryid;
	private String subcategoryname;
	private int categoryid;
	private int status;
	public int getSubcategoryid() {
		return subcategoryid;
	}
	public void setSubcategoryid(int subcategoryid) {
		this.subcategoryid = subcategoryid;
	}
	public String getSubcategoryname() {
		return subcategoryname;
	}
	public void setSubcategoryname(String subcategoryname) {
		this.subcategoryname = subcategoryname;
	}
	public int getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
		
}
