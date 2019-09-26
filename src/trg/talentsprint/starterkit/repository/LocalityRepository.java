package trg.talentsprint.starterkit.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import trg.talentsprint.starterkit.model.Locality;

@Repository
public interface LocalityRepository extends CrudRepository<Locality, Integer> {
	
	public List<Locality> findBycityid(int cityid);

}
