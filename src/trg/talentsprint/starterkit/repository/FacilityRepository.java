package trg.talentsprint.starterkit.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import trg.talentsprint.starterkit.model.Facility;

public interface FacilityRepository extends CrudRepository<Facility, Integer>{
	
	public List<Facility> findBySubcategoryidAndLocalityid(int subcategoryid,int localityid);

}
