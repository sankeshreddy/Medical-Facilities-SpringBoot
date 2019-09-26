package trg.talentsprint.starterkit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "category")

public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private int categoryid;
	private String categoryname;
	private int status;

	public int getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}

	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

}
