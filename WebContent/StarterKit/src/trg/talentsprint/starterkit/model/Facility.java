package trg.talentsprint.starterkit.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "facility")
public class Facility {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int f_id;
	private String fname;
	private String f_descrption;
	private long fcontact;
	private int localityid;
	private int subcategoryid;

	@OneToMany(mappedBy = "fid")
	List<MyFavourite> fid;

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

	public String getF_descrption() {
		return f_descrption;
	}

	public void setF_descrption(String f_descrption) {
		this.f_descrption = f_descrption;
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

	public List<MyFavourite> getFid() {
		return fid;
	}

	public void setFid(List<MyFavourite> fid) {
		this.fid = fid;
	}

	@Override
	public String toString() {
		return "Facility [f_id=" + f_id + ", fname=" + fname + ", f_descrption=" + f_descrption + ", fcontact="
				+ fcontact + ", localityid=" + localityid + ", subcategoryid=" + subcategoryid + ", fid=" + fid + "]";
	}

}