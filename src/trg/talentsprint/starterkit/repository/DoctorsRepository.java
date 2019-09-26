package trg.talentsprint.starterkit.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import trg.talentsprint.starterkit.model.Doctor;

public interface DoctorsRepository extends CrudRepository<Doctor, Integer> {
	
	public List<Doctor> findBySubcategoryidAndLocalityid(int subcategoryid,int localityid);

}
